# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nova
export LANG=en_US.UTF-8

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

HIST_STAMPS="yyyy-mm-dd"

plugins=(git alias-tips fast-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL=%{$fg_bold[blue]%}❯%{$reset_color%}%{$fg_bold[red]%}❯%{$reset_color%}%{$fg_bold[green]%}❯%{$reset_color%}
prompt pure

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# set variables for iTerm status bar
iterm2_print_user_vars() {
  iterm2_set_user_var nodeVersion $(node -v)
  iterm2_set_user_var npmVersion $(npm -v)
  iterm2_set_user_var pwd $(pwd)
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
