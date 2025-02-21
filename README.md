# MilkyTracker addons

<a href="samplers"><img src="samplers/screenshot.jpg"/></a>

<a href="csound"><img src="csound/screenshot.jpg"/></a>

<a href="ladspa"><img src="ladspa/screenshot.jpg"/></a>

<a href="random-sample"><img src="random-sample/screenshot.jpg"/></a>

#### About addons

**Addons** allow for interfacing **with** the operating system ♥.<br>
This prevents milkytracker to become a monolyth DAW, stay small, and 
promote **personal computing** across all OS'es.<br>

Addons can be accessed via the sample-editor rightclick context-menu.<br>
Because *samples ARE key-ingredients* for sample-trackers, so an unexplored territory is to **integrate** external tools with the sampler (not filebrowsers):

* procedural **SAMPLERS**: sample **ANY** synth/app/input into milkytracker
* DIY '**plugin grabber**' by sampling desktop audio
* **generate** samples using puredata/csound etc
* **apply** a complex **effect** to a sample
* source samples from an online API
* source samples from an local AI agent
* Extend the sampler with your **favorite SCRIPTING LANGUAGE(s)** 
* Create script-**pipelines between different tools**
* **automate** tedious tasks 
* FUTURE: export/import `.xp` [processable] patterns in a similar fashion

Also async workflows are possible via the sample editor:

* right-click: Addon > select your addon (`audacity %s &` e.g.)
* import later: Addon > import from addon

#### Rationale 

MilkyTracker aims to be a small & portable musicproduction app.
Becoming a plugin-host is simply not on the table, as it would burden its 
mission with various plugin-format maintenance (and break lowspec devices).
Having that said, there are various minimalist [cmdline] plugin-host which are perfectly usable by addons♥.

#### Developer info

https://github.com/milkytracker/MilkyTracker/tree/master/src/tools/addons.txt

> please contribute and do a pullrequest, minimum contribution guidelines: 

* create a (topic/author-based) folder in this repo
* put your scripts in there
* and a `README.md`
* and a `screenshot.jpg`
* and a `addons.txt`
* done!
