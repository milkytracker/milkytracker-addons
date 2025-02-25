# SoX

[SoX](https://sourceforge.net/projects/sox) is the Swiss Army Knife of sound processing utilities. It can convert audio files to other popular audio file types and also apply sound effects and filters during the conversion.

![](screenshot.jpg)

## Installation

> **NOTE**: sox addon definitions are shipped by default with milkytracker.

However, this repository serves for community-submitted definitions as well.

1. Make sure sox is installed (via your package manager nix/apt-get/homebrew)
2. Worstcase do a [manual installation](https://sox.org)
3. Doublecheck: make sure typing `sox` in your console will work (or set [PATH](https://superuser.com/questions/284342/what-are-path-and-other-environment-variables-and-how-can-i-set-or-use-them))
4. copy the 'sox' folder of this repository to the config-directory:

* LINUX/MAC: `~/.config/milkytracker`
* WINDOWS:   `C:\Users\<user>\AppData\Roaming\MilkyTracker`

> NOTE: in case of manual install, put the 'sox' executable here too

5. copy/paste the contents of [addons.txt](./addons.txt) into milkytracker (`Sample Editor > addons > edit addons`) 
6. make sure to save the texteditor (ctrl+s or command+s)
7. profit! (now you should see the addons appear)

> for more debugging info run `ADDONS_DEBUG=1 ./milkytracker`

