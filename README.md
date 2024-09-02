# dwmdots

## installation
`git clone https://github.com/Edenwqs/dwmdots` <br>
`cp -r dwmdots/.config/* ~/.config` <br>
`cp dwmdots/.xinitrc ~` <br>
`cp dwmdots/.bash_profile ~` <br>

Terminal Font is Monocraft <br>
Follow the instructions at https://github.com/IdreesInc/Monocraft for linux <br>
Iosevka is the font for dwmbar and probably some other stuff, google it <br>

--dwm <br>
install dependencies for dwm (Xlib header files, google it or dwm dependencies) <br>
probably also some xorg stuff idk should be fine <br>
(in dwmdots directory:) <br>
`cd .config/dwm` <br>
`sudo make clean install` <br>

--dwmbar <br>
https://github.com/thytom/dwmbar <br>
some of the modules probably dont work idk <br>

--picom <br>
follow the build and install instructions at https://github.com/yshui/picom (animations will not work if not compiled from source) <br>

--terminal <br>
terminal is kitty (installed from package manager) <br>

--rofi <br>
rofi is my app launcher its probably in the official repos <br>
https://github.com/adi1090x/rofi is where it is taken from but i dont think installing from this link is necessary <br>

--nvim <br>
vimplug is my plugin manager, rest should be intuitive <br>

--btop <br>
hardware manager thing, probably in the official repos <br>

--yazi <br>
a tui file explorer potentially in official repos <br>
