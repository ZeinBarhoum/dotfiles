if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
ENABLE_CORRECTION="true"
plugins=(git kitty python pip conda-zsh-completion)
# for conda-zsh-completion see (https://github.com/conda-incubator/conda-zsh-completion)
source $ZSH/oh-my-zsh.sh
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
__conda_setup="$("$HOME/conda/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/conda/etc/profile.d/conda.sh" ]; then
        . "$HOME/conda/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/conda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# >>> mamba initialize >>>
export MAMBA_EXE="$HOME/conda/bin/mamba";
export MAMBA_ROOT_PREFIX="$HOME/conda";
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
#
export PATH="$HOME/Scripts/:$PATH"
export PATH="$PATH:$HOME/.local/bin"


alias code='code-insiders'
mkcd ()
{
    mkdir -p -- "$1" &&
       cd -P -- "$1"
}


# to add the directory on the titlebar of the terminal
DISABLE_AUTO_TITLE="true"
function set_terminal_title() {
  if [[ -n "$1" ]]; then
    print -Pn "\e]0;$PWD | $1\a"
  else
    print -Pn "\e]0;$PWD\a"
  fi
}
function preexec() {
  set_terminal_title "$1"
}
function precmd() {
  set_terminal_title
}
set_terminal_title

alias noetic='source /opt/ros/noetic/setup.zsh'
alias humble='source /opt/ros/humble/setup.zsh'
alias clear='printf "\x1b[H\x1b[2J"' # to solve problems with conda and kitty 

