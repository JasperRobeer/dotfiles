# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/jasper/.oh-my-zsh

ZSH_THEME="pure-minimal"
plugins=(git)

source $ZSH/oh-my-zsh.sh

## User configuration

# For autostarting the ssh-agent service in systemd
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Aliases
alias dotfiles='/usr/bin/git --git-dir=/home/jasper/.dotfiles --work-tree=/home/jasper'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
