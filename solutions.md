# Solutions

This is a list of encounterd issues and their solutions. There is no systematic way for now to organize these issues, they are added
when they are encountered and solved.

The issues listed here might be related to all sort of things, libraries, packages, programs, system ...

The main goal from this file is to avoid searching for a solution I know I found before :)

- Startup programs are included in `/etc/xdg/autostart/`. If pasystray is shown twice in system tray, probably one of them is from i3 and the other from autostart

- `clear`, `taps` and other commands showing `terminals database is inaccessible`, this is probably from conda. Possible solutions:

  - Use another terminal, I found the problem in kitty but not in gnome-terminal
  - Deactivate conda environment
  - Delete `clear` and `taps` or any other utility from the `bin/` dir of the conda environment

- `isaacsim` and `isaaclab` not working correctly using zshell. Solved it as follows

  - In `isaacsim/setup_python_env.sh` I added

  ```zsh
  if [ -n "$ZSH_VERSION" ]; then
  SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
  fi
  ```

  - The `isaaclab.sh` is executed using `bash isaaclab.sh` instead of `./isaaclab.sh`

- Data is showing in Russian. Problem with `locale`, can be changed by changing the file `/etc/default/locale`

- `latexindent` not modifying break.

  - Solution add `-m --yaml="modifyLineBreaks:textWrapOptions:columns:80"`.
  - In nvim (conform) add
    ```lua
    require("conform").formatters.latexindent ={ prepend_args = { "-m", "--yaml=modifyLineBreaks:textWrapOptions:columns:80"}}
    ```
    It's important to not add `''` around the yaml spec, this WON'T WORK:
    ```lua
    require("conform").formatters.latexindent = { prepend_args = { "-m", "--yaml='modifyLineBreaks:textWrapOptions:columns:80'"}}
    ```

- Installing Ros1 noetic on ubuntu 22.04?

  - Excellent intructions [here](https://gist.github.com/Meltwin/fe2c15a5d7e6a8795911907f627255e0)
  - For me, I skipped the rosdep stuff and installed dependencies when they are not FOUND. I had to install `libpoco-dev`, `liblog4cxx-dev`, `libbz2-dev` and `libgpgme-dev`. I have Ros2 already so probably alot of shared dependencies are already on my system.
  - If installing on `/opt/ros/noetic` fails even after building without it succeed. Delete devel and build dirs and do the build with install command directly.
  - After installation, `roscore` gives `ModuleNotFoundError: No module named 'defusedxml'`. Simply `pip install defusedxml`

- `awk` is behaving not as expected. Make sure `gawk` is installed not `mawk` which doesn't support the full functionality of awk language.

- problems with `libstdc++` and `gl` in conda env with isaaclab, check [here](https://stackoverflow.com/questions/72110384/libgl-error-mesa-loader-failed-to-open-iris), copy the system's `libstdc++` inside conda instead of the conda-provided one.
