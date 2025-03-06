#!/bin/bash

KITTY_CONF="$HOME/.config/kitty/kitty.conf"
KITTY_DIR="$HOME/.config/kitty/"
TMUX_CONF="$HOME/.tmux.conf"

# Check current Kitty theme
if grep -q "include ./dark-theme.conf" "$KITTY_CONF"; then
    echo "Switching to light theme..."
    sed -i '' 's/include \.\/dark-theme\.conf/include \.\/theme\.conf/' "$KITTY_CONF"
    sed -i '' 's/set -g @tmux-gruvbox .*/set -g @tmux-gruvbox "light-transparent"/' "$TMUX_CONF"
    kitten @ set-colors -a "$KITTY_DIR"theme.conf
else
    echo "Switching to dark theme..."
    sed -i '' 's/include \.\/theme\.conf/include \.\/dark-theme\.conf/' "$KITTY_CONF"
    sed -i '' 's/set -g @tmux-gruvbox .*/set -g @tmux-gruvbox "dark-transparent"/' "$TMUX_CONF"
    kitten @ set-colors -a "$KITTY_DIR"dark-theme.conf
fi

# Apply changes
tmux source-file "$TMUX_CONF"

echo "Theme toggled!"
