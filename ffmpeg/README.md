# FFMPEG

[FFMPEG](https://ffmpeg.org) is a complete, cross-platform solution to record, convert and stream audio and video.

![](screenshot.jpg)

## Installation

> **NOTE**: ffmpeg addon definitions are shipped by default with milkytracker.

However, this repository serves for community-submitted definitions as well.

1. Make sure ffmpeg is installed (via your package manager nix/apt-get/homebrew)
2. Worstcase do a [manual installation](https://ffmpeg.org)
3. Doublecheck: make sure typing `ffmpeg` in your console will work (or set [PATH](https://superuser.com/questions/284342/what-are-path-and-other-environment-variables-and-how-can-i-set-or-use-them))
4. copy the 'ffmpeg' folder of this repository to the config-directory:

* LINUX/MAC: `~/.config/milkytracker`
* WINDOWS:   `C:\Users\<user>\AppData\Roaming\MilkyTracker`

> NOTE: in case of manual install, put the 'ffmpeg' executable here too

5. copy/paste the contents of [addons.txt](./addons.txt) into milkytracker (`Sample Editor > addons > edit addons`) 
6. make sure to save the texteditor (ctrl+s or command+s)
7. profit! (now you should see the addons appear)

> for more debugging info run `ADDONS_DEBUG=1 ./milkytracker`

