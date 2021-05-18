# Yabai and Skhd Config


credits to [Julian-heng](https://gitlab.com/julian-heng/). Most of what is present in this folder is just a slight modification of his dotfiles
- Not even a single change to `yabairc`
- Keyboard mapping is modified in `skhdrc`
- instead of iterm , i use kitty so modified `open_iterm2.sh` to `open_kitty.sh`




NOTE: Yabai requires System Integrity Protection to be disabled to work properly. See [here](https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection) for more information.
NOTE: For macOS Big Sur and above, scripting additions needs elevated privileges to work properly. See [here](<https://github.com/koekeishiya/yabai/wiki/Installing-yabai-(latest-release)#macos-big-sur---automatically-load-scripting-addition-on-startup>) for more information.

## Installation

```sh
# Remove previous links
$ rm -f ~/.{yabai,skhd}rc

# Install configs
# copy this folder to ~/.config/yabai

$ ln -s ~/.config/yabai/yabairc ~/.yabairc
$ ln -s ~/.config/yabai/skhdrc" ~/.skhdrc"
```

<kbd>cmd</kbd> is super key equivalent to  4 leafed clove
<kbd>option</kbd> is alt key equivalent that looks like straw with helicopter blade
<kbd>ctrl</kbd> is ^  



## Keyboard Shortcuts

### Changing Focus

<kbd>cmd</kbd> + <kbd>hjkl</kbd>

### Resize Windows

| Action       | Key Combination                                  |
| ------------ | ------------------------------------------------ |
| Resize left  | <kbd>lctrl</kbd> + <kbd>alt</kbd> + <kbd>h</kbd> |
| Resize down  | <kbd>lctrl</kbd> + <kbd>alt</kbd> + <kbd>j</kbd> |
| Resize up    | <kbd>lctrl</kbd> + <kbd>alt</kbd> + <kbd>k</kbd> |
| Resize right | <kbd>lctrl</kbd> + <kbd>alt</kbd> + <kbd>l</kbd> |
| Equalise     | <kbd>lctrl</kbd> + <kbd>alt</kbd> + <kbd>e</kbd> |

### Move Windows

<kbd>shift</kbd> + <kbd>alt</kbd> + <kbd>hjkl</kbd>

### Move Windows to Workspace

| Action                      | Key Combination                                    |
| --------------------------- | -------------------------------------------------- |
| Send to last active desktop | <kbd>shift</kbd> + <kbd>cmd</kbd> + <kbd>m</kbd>   |
| Send to previous workplace  | <kbd>shift</kbd> + <kbd>cmd</kbd> + <kbd>p</kbd>   |
| Send to next workplace      | <kbd>shift</kbd> + <kbd>cmd</kbd> + <kbd>n</kbd>   |
| Send to workplace           | <kbd>shift</kbd> + <kbd>cmd</kbd> + <kbd>num</kbd> |

### Rotate Windows

| Action               | Key Combination                                  |
| -------------------- | ------------------------------------------------ |
| Rotate clockwise     | <kbd>alt</kbd> + <kbd>r</kbd>                    |
| Rotate anticlockwise | <kbd>shift</kbd> + <kbd>alt</kbd> + <kbd>r</kbd> |
| Flip on x-axis       | <kbd>shift</kbd> + <kbd>alt</kbd> + <kbd>x</kbd> |
| Flip on y-axis       | <kbd>shift</kbd> + <kbd>alt</kbd> + <kbd>y</kbd> |

### Window Actions

| Action            | Key Combination                                  |
| ----------------- | ------------------------------------------------ |
| Fullscreen        | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>f</kbd>                    |
| Native fullscreen | <kbd>shift</kbd> + <kbd>alt</kbd> + <kbd>f</kbd> |

### Window Insertion Point

| Action       | Key Combination                                                     |
| ------------ | ------------------------------------------------------------------- |
| Insert left  | <kbd>shift</kbd> + <kbd>lctrl</kbd> + <kbd>alt</kbd> + <kbd>h</kbd> |
| Insert down  | <kbd>shift</kbd> + <kbd>lctrl</kbd> + <kbd>alt</kbd> + <kbd>j</kbd> |
| Insert up    | <kbd>shift</kbd> + <kbd>lctrl</kbd> + <kbd>alt</kbd> + <kbd>k</kbd> |
| Insert right | <kbd>shift</kbd> + <kbd>lctrl</kbd> + <kbd>alt</kbd> + <kbd>l</kbd> |

NOTE: To cancel insertion point, press the last inerstion key combination.

### Misc

| Action        | Key Combination                                                     |
| ------------- | ------------------------------------------------------------------- |
| Toggle float  | <kbd>shift</kbd> + <kbd>alt</kbd> + <kbd>space</kbd>                |
| Toggle gaps   | <kbd>lctrl</kbd> + <kbd>alt</kbd> + <kbd>g</kbd>                    |
| Restart yabai | <kbd>lctrl</kbd> + <kbd>shift</kbd> + <kbd>alt</kbd> + <kbd>r</kbd> |

### Showing System Information

#### Description

Uses `osascript` to show information like CPU, memory, battery, etc. The CPU script requires [osx-cpu-temp](https://github.com/lavoiesl/osx-cpu-temp) installed. The song script supports Spotify, Music and cmus.

Click [here](scripts) to view the script folder.

NOTE: May have to change the location of the scripts in skhdrc.

#### Key Combination

<kbd>fn</kbd> + <kbd>lalt</kbd> + <kbd>num</kbd>

#### Screenshots

<img width="370" height="120" src="screenshots/cpu.png?raw=true"><img width="370" height="120" src="screenshots/mem.png?raw=true">
<img width="370" height="120" src="screenshots/bat.png?raw=true"><img width="370" height="120" src="screenshots/disk.png?raw=true">
<img width="370" height="120" src="screenshots/song.png?raw=true">

```
ralt - 1 : /path/to/script
ralt - 2 : /path/to/script
ralt - 3 : /path/to/script
...
```


#### Description

Launches kitty.

Click [here](scripts/open_kitty.sh) to view the script that uses osascript and send <kbd> ctrl+shift+n </kbd> to launch new kitty shell.
Click [here](scripts/kits.sh) to view the script that just works.

#### Key Combination

<kbd>cmd</kbd> + <kbd>return</kbd>

```
cmd - return : /path/to/launch/terminal
```
