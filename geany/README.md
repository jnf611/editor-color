patches
	work with release 1.26
	- download source
	- apply patch at root extracted folder
        - package prerequisites:
		sudo apt install build-essential pkg-config libgtk2.0-dev intltool rst2html python-docutils
	- autotools:
		./configure
		make
		make install

color scheme
	copy in geany config folder ~/.config/geany/colorschemes
	View/Change Color Scheme/ select new scheme

configuration
replace:
x-terminal-emulator -e "/bin/bash %c"
by:
gnome-terminal -e "/bin/bash %c"

keybinding
Compile: F8
Build: F9
Run: Ctrl+F9
