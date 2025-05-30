# My Dot Files

## Install

Note, for neovim config, check [here](https://github.com/ZeinBarhoum/nvim_config)

First of all, clone this repo `git clone github.com/ZeinBarhoum/dotfiles ~/.dotfiles`

### i3

- First install i3wm using the package manager. For ubuntu: follow [the instructions](https://i3wm.org/docs/repositories.html) to get latest stable version
- Install the configs using symbolic link `ln -s ~/.dotfiles/i3/config ~/.config/i3/config`
- Install missing apps connected to shortcuts, like: `kitty`, `firefox`, etc.
- For wallpapers, install feh `sudo apt install feh`
- For screenshots: xclip `sudo apt install maim xclip`
- For bluetooth: `sudo apt install blueman`
- For sound control: `sudo apt install pasystray`
- To enable spawning a new terminal session in the same directory, install xcwd using [the instructions ](https://github.com/schischi/xcwd)
- For MSI laptops, you can optionally install [MControlCenter](https://github.com/dmitry-s93/MControlCenter)
- For fancy lock screen: `sudo apt install i3lock-fancy`
- [Note] currently `i3status-rust` is set as the status command, if you don't want to use i3status-rust, just change this back to i3status or i3blocks in [here](i3/config) (both are commented out), or whatever status bar command you choose.
- [Note] The used font is `JetBrainsMono`, you can download it from [here](https://www.nerdfonts.com/) and follow [these instructions ](https://askubuntu.com/a/3701) to install.

### i3status-rust

- If you choose to use i3status-rust as a status bar, install it first from source using [these instructions](https://github.com/greshake/i3status-rust/blob/master/doc/manual_install.md)
- Create a config path `mkdir -p ~/.config/i3status-rust/`
- Link config there `ln -s ~/.dotfiles/i3status-rust/config.toml ~/.config/i3status-rust/config.toml`
- For showing the current keyboard language, kbdd is required `sudo apt install kbdd`

### i3blocks

- If you choose to use i3blocks as status bar, install i3blocks (from source is best) using [the instructions](https://github.com/vivien/i3blocks?tab=readme-ov-file#installation)
- Clone the collection of scripts `git clone https://github.com/vivien/i3blocks-contrib ~/.config/i3blocks`
- Install the configs using symbolic link `ln -s ~/.dotfiles/i3blocks/config ~/.config/i3blocks/config`
- For the monitor manager icon, tkinter is required `sudo apt-get install python3-tk`
- For the temperature monitor, lm-sensors is required `sudo apt install lm-sensors`
- For showing the current keyboard language, kbdd is required `sudo apt install kbdd`
- If bandwidth is not appearing, try to install `sudo apt install gawk`
- If battery level is not showing, try to install `sudo apt install acpi`

### kitty

- First install kitty `sudo apt install kitty`
- Install the configs using symbolic link `ln -s ~/.dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf`
- The used font is `JetBrainsMono`, you can download it from [here](https://www.nerdfonts.com/) and follow [these instructions ](https://askubuntu.com/a/3701) to install.

### Scripts

- Create a symlink `ln -s ~/.dotfiles/Scripts/ ~/Scripts`
- Add Scripts to PATH in your shell config using `export PATH="$HOME/Scripts/:$PATH"`

### zsh

- First install zsh `sudo apt install zsh`.
- Install oh-my-zsh `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`.
- Install `powerlevel10k` theme `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"`
- Remove the default omz config `mv ~/.zshrc ~/.zshrc.back`
- Install the config using symlink: `ln -s ~/.dotfiles/.zshrc ~/.zshrc && ln -s ~/.dotfiles/.zshenv ~/.zshenv`
- First time to open a terminal, you will be prompted to configure the theme
- Install sourced or aliases programs like micromamba/conda if required
- For `conda-zsh-completion` plugin, `git clone https://github.com/conda-incubator/conda-zsh-completion ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/conda-zsh-completion`

### gitconfig

- Simply link `ln -s ~/.dotfiles/.gitconfig ~/.gitconfig`
- For local config, first create a local config file `touch ~/.gitconfig.local`.
- It's already linked in the main config, so you can add your local config there.

### Conda

- Simply link `ln -s ~/.dotfiles/.condarc ~/.condarc`

### Zathurs

- `ln -s ~/.dotfiles/zathura ~/.config/zathura`
