#!/bin/zsh

# Times the screen off and puts it to background
swayidle \
    timeout 5 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &

# Locks the screen immediately
swaylock \
  --indicator-radius 40 \
  --indicator-thickness 5 \
  --line-uses-ring \
  --font 'NotoSans Nerd Font Mono:style=Thin,Regular 40' \
  --image "/usr/share/backgrounds/kali-16x9/kali-ascii.png" \
  --daemonize \
  --key-hl-color FAFAFA \
  --ring-ver-color 686A6B \
  --inside-clear-color 00000000 \
  --inside-wrong-color 00000000 \
  --inside-ver-color 00000000 \
  --separator-color 01ABB3 \
  --ring-color 01ABB3 \
  --ring-wrong-color E54B4B

# Kills last background task so idle timer doesn't keep running
kill %%
