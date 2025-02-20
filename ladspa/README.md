# LADSPA plugins

[LADSPA](https://en.wikipedia.org/wiki/LADSPA) plugins are simple but powerful FX processors [mostly found on linux].

![](screenshot.jpg)

## Installation

1. Make sure either [ffmpeg](https://ffmpeg.org) or [SoX](https://sourceforge.net/projects/sox/)is installed (via your package manager nix/apt-get/homebrew)
2. Worstcase do a [manual installation](https://sourceforge.net/projects/sox/)
3. Doublecheck: make sure typing `sox` or `ffmpeg` in your console will work (or set [PATH](https://superuser.com/questions/284342/what-are-path-and-other-environment-variables-and-how-can-i-set-or-use-them))
4. install the 'ladspa' folder of this repository in the config-directory:

* LINUX/MAC: `~/.config/milkytracker`
* WINDOWS:   `C:\Users\<user>\AppData\Roaming\MilkyTracker`

5. copy/paste the contents of [addons.txt](./addons.txt) into milkytracker (`Sample Editor > addons > edit addons`) 
6. make sure to save the texteditor (ctrl+s or command+s)
7. profit! (now you should see the addons appear)

> for more debugging info run `ADDONS_DEBUG=1 ./milkytracker`

