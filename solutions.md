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
