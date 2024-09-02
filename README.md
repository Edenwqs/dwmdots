# dwmdots

## installation
`git clone https://github.com/Edenwqs/dwmdots`
`cp -r dwmdots/.config/* ~/.config`
`cp dwmdots/.xinitrc ~`
`cp dwmdots/.bash_profile ~`

Terminal Font is Monocraft
Follow the instructions at https://github.com/IdreesInc/Monocraft for linux
Iosevka is the font for dwmbar and probably some other stuff, google it

--dwm
install dependencies for dwm (Xlib header files, google it or dwm dependencies)
probably also some xorg stuff idk should be fine
(in dwmdots directory:)
`cd .config/dwm`
`sudo make clean install`

--dwmbar
https://github.com/thytom/dwmbar
some of the modules probably dont work idk

--picom
follow the build and install instructions at https://github.com/yshui/picom (animations will not work if not compiled from source)

--terminal
terminal is kitty (installed from package manager)

--rofi
rofi is my app launcher its probably in the official repos
https://github.com/adi1090x/rofi is where it is taken from but i dont think installing from this link is necessary

--nvim
vimplug is my plugin manager, rest should be intuitive

--btop
hardware manager thing, probably in the official repos

--yazi
a tui file explorer potentially in official repos
