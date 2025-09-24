# Information of Installed Packages not from core repos

Legend:

- PPA: personal package archive is added to apt, software can be uninstalled or updated directly thought apt.

- source: software is build from source. Updating is manual. in case of using cpack or checkinstall, uninstalling can be done using apt, otherwise uninstalling is also manual. If not told otherwise, it's on `$HOME/Programs/source/`

- Archive: software is installed using an archive (tar or zip). update and uninstall is done manually. If not told otherwise, it's on `$HOME/Programs/archive/`. By archive we don't mean source code installed as archive, this goes in the source section.

- Binary: software is installed using a binary (deb) file. Uninstall is done using apt, but update is manual. If not told otherwise, it's on `$HOME/Programs/binary/`

- Script: software is installed using an installation script. If the script is directly run, e.g `curl <url> | sudo sh `, then it will not be physically on the machine. Otherwise, it's on `$HOME/Programs/script`

List:

- Zotero: from [PPA](https://github.com/retorquere/zotero-deb)

- i3wm: from [PPA](https://i3wm.org/docs/repositories.html)

- Ros2 Humble: from [PPA](https://docs.ros.org/en/humble/Installation/Ubuntu-Install-Debs.html)

- neovim: from [source](https://github.com/neovim/neovim) with cpack

- i3blocks: from [source](https://github.com/vivien/i3blocks)

- xcwd: from [source](https://github.com/schischi/xcwd)

- MControlCenter: from [archive](https://github.com/dmitry-s93/MControlCenter)

- ~yandex-music: from [binary](https://github.com/cucumber-sp/yandex-music-linux)~

- IsaacSim: from [archive](https://docs.isaacsim.omniverse.nvidia.com/latest/installation/download.html#download-isaac-sim-short), in Isaac/IsaacSim

- IsaacLab: from [source](https://github.com/ZeinBarhoum/IsaacLab), in Isaac/IsaacLab

- Ros1 Noetic: from [source](https://gist.github.com/Meltwin/fe2c15a5d7e6a8795911907f627255e0)

- distrobox: from [script](https://github.com/89luca89/distrobox?tab=readme-ov-file#curl-or-wget)

- ~~miniconda: from [script](https://www.anaconda.com/docs/getting-started/miniconda/install#macos-linux-installation)~~

- Docker: from [PPA](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)

- nvidia-container-toolkit [PPA](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#with-apt-ubuntu-debian)

- Drawio: from [binary](https://www.drawio.com/)

- Zoom: from [binary](https://zoom.us/download?os=linux)

- rust: from [script](https://www.rust-lang.org/tools/install)

- i3status-rust: from [source](https://github.com/greshake/i3status-rust/blob/master/doc/manual_install.md)

- go: from [archive](https://go.dev/doc/install)

- miniforge (conda+mamba): from [script](https://github.com/conda-forge/miniforge)

- micromamba: from [script](https://mamba.readthedocs.io/en/latest/installation/micromamba-installation.html)

- cudatoolkit 12.6: from [PPA](https://developer.nvidia.com/cuda-12-6-0-download-archive?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04&target_type=deb_local)

- cudnn 12.6: from [PPA](https://developer.nvidia.com/cudnn-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04&target_type=deb_local)

- ceres solver: from [source](http://ceres-solver.org/installation.html) - installed using `checkinstall` with name `ceres`

- yandex browser: from [binary](https://browser.yandex.ru/c/browser-linux)

- uv: from [script](https://docs.astral.sh/uv/getting-started/installation/)

- anydesk: from [PPA](https://deb.anydesk.com/howto.html)

- kitty: from [script](https://sw.kovidgoyal.net/kitty/binary/)

- obs: from [PPA](https://github.com/obsproject/obs-studio/wiki/install-instructions#linux)

- code-insiders: from [binary](https://code.visualstudio.com/docs/?dv=linux64_deb&build=insiders)

- ollama: from [script](https://github.com/ollama/ollama)

- affine: from [binary](https://github.com/toeverything/AFFiNE/releases/tag/v0.22.4)

- yandex music (official) from [binary](https://music.yandex.ru/download/)
