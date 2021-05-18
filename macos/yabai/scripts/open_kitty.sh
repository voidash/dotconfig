#!/usr/bin/env bash

# Detects if kitty is running
if  pgrep "kitty"; then
    open -a "/Applications/kitty.app"
else
    script='tell application "System Events" to tell process "Kitty" to keystroke "n" using {shift down, control down}'
    osascript -e "${script}" 
fi
