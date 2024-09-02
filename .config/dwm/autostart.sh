#!/usr/bin/bash

feh --bg-scale ~/.config/dwm/background.png
picom -b
sudo cpupower -c 0-3 frequency-set -u 800mhz
dwmbar &
xset r rate 200 40
