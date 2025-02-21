# Procedural Samplers 

Making music is about spending as least possible time in filebrowsers.<br>
Why limit ourselves with linear sampler workflows?

![](screenshot.jpg)

With procedural sampling, we can start imagining new and **personal** workflows.

## Installation

The default [addons.txt](https://github.com/milkytracker/MilkyTracker/blob/master/src/tools/archivewriter.cpp) of milkytracker already contains ways to sample from applications

## Sampling from your OS

1. rightclick in the sample-editor: Addons > edit addons
2. Scroll to the SAMPLER-section
3. comment out the ones which don't work for you/your platform

TIPS:

1. linux users probably want to have sox installed (manually or via package manager)
2. if you're on windows, uncomment the sox/waveaudio one

Some example sampler definitions:

```
sampler sox/alsa          ; sox -V6 -t alsa hw:%~(alsa_device:0:20:0) -c1 -b16 -r44100 %s trim 0 %~(duration_sec:1:10:1)
sampler sox/pulse input   ; sox -V6 -t pulseaudio default -c1 -b16 -r44100 %s trim 0 %~(duration_sec:1:10:1)
sampler sox/pulse output  ; sox -V6 -t pulseaudio $(pactl list sources short | awk '/\.monitor\t/ {print $2}') -c1 -b16 -r44100 %s trim 0 %~(duration_sec:1:10:1)
sampler sox/coreaudio     ; sox -V6 -t coreaudio default -c1 -b16 -r44100 %s trim 0 %~(duration_sec:1:10:1)
sampler sox/JACK          ; sox -V6 -t jack default -c1 -b16 -r44100 %s trim 0 %~(duration_sec:1:10:1)
sampler sox/waveaudio     ; sox -V6 -t waveaudio %~(pulse_device:0:20:0) -c1 -b16 -r44100 %s trim 0 %~(duration_sec:1:10:1)
sampler JACK/jack_capture ; jack_capture -d %~(duration_sec:1:10:1) --channels 1 --port system:playback* %s
sampler arecord/pulse     ; arecord -D pulse -f S16_LE -r 44100 -c 1 -d %~(duration_sec:1:10:1) %s
sampler arecord/alsa      ; arecord -D hw:%~(alsa_device:0:20:0),0 -f S16_LE -r 44100 -c 1 -d %~(duration_sec:1:10:1) %s
sampler pulseaudio/parec  ; parec --version && timeout %~(duration_sec:1:10:1) parec -d $(pactl list sources short | awk '/\.monitor\t/ {print $2}') --channels=1 --rate=44100 --format=s16le --file-format=wav %s ; exit 0
```

> IMPORTANT: note that these processes are blocking the milkytracker process. If you don't want to freeze milkytracker, add '&' and select 'Addon > import from addon' afterwards

## Going procedural

Let's say you have other (online) software which create or process samples:

1. write your script (`AIgenvocal.py` or `AIprocess.py` e.g.)
2. make sure that it works (`AIgenvocal.py out.wav` or `AIprocess.py in.wav out.wav` e.g.4
3. add them to `addons.txt`

4. add this to the `addons.txt` file in the config-directory (Addons > edit addons):

* LINUX/MAC: `~/.config/milkytracker`
* WINDOWS:   `C:\Users\<user>\AppData\Roaming\MilkyTracker`

```
myprocedural sampler     ; ./AIgenvocal.py %s
myprocedural processor   ; ./AIprocess.py %s %s
myprocedural workflow    ; read -p "enter text: " text && ./AIgenvocal.py %s --text="$text"
```

5. make sure to save the texteditor (ctrl+s or command+s)
6. profit! (now you should see the addons appear)

> NOTE 1: if you dont want them to freeze the UI, add '&' and select 'Addon > import from addon' afterwards

> NOTE 2: for more debugging info run `ADDONS_DEBUG=1 ./milkytracker`

