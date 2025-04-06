# My Dot Files
## Install
First of all, clone this repo `git clone github.com/ZeinBarhoum/dotfiles ~/.dotfiles`
### i3
- First install i3wm using the package manager. For ubuntu: follow [the instructions](https://i3wm.org/docs/repositories.html) to get latest stable version
- Install the configs using symbolic link `ln ~/.dotfiles/i3/config ~/.config/i3/config`
- Install missing apps connected to shortcuts, like: `kitty`, `firefox`, etc.
- For wallpapers, install feh `sudo apt install feh`
- For screenshots:  xclip `sudo apt install maim xclip`
- For bluetooth:  `sudo apt install blueman`
- For sound control: `sudo apt install pasystray`
- To enable spawning a new terminal session in the same directory, install xcwd using [the instructions ](https://github.com/schischi/xcwd)
- For MSI laptops, you can optionally install [MControlCenter](https://github.com/dmitry-s93/MControlCenter)
- [Note] currently `i3blocks` is set as the status command, if you don't want to use i3blocks, just change this back to i3status or whatever status bar command you choose.

### i3blocks
- First install i3blocks (from source is best) using [the instructions](https://github.com/vivien/i3blocks?tab=readme-ov-file#installation)
- Clone the collection of scripts `git clone https://github.com/vivien/i3blocks-contrib ~/.config/i3blocks`
- Install the configs using symbolic link `ln ~/.dotfiles/i3blocks/config ~/.config/i3blocks/config`
- For the monitor manager icon, tkinter is required `sudo apt-get install python3-tk`
- For the temperature monitor, lm-sensors is required `sudo apt install lm-sensors`
- For showing the current keyboard language, kbdd is required `sudo apt install kbdd`

