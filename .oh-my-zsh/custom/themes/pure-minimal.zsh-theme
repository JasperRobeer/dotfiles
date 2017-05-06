# vim:ft=zsh ts=2 sw=2 sts=2

# A minimal pure ZSH prompt theme, customized to my own preferences.
# The theme is inspired by 'sindresorhus/pure'.
# The theme depends on a Nerd Font: github.com/ryanoasis/nerd-fonts

PURE_PROMPT_CHAR="❯"

## Prompt components

# Single colored element in the prompt
#   promt_element(color, string)
prompt_element() {
  local fg bg
  [[ -n $1 ]] && fg="%F{$1}" || fg="%f"
  echo -n "%{$fg%}"
  [[ -n $2 ]] && echo -n $2
}

# Current working directory
prompt_dir() {
  prompt_element cyan "%~ "
}

# Git branch
prompt_git() {
  (( $+commands[git] )) || return
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    branch=$(git symbolic-ref HEAD | cut -d'/' -f3)
    prompt_element defaut " "
    prompt_element green "$branch "
  fi
}

# Prompt character colored based on the last status
prompt_status_char() {
  [[ $RETVAL -ne 0 ]] && prompt_element red $PURE_PROMPT_CHAR || prompt_element default $PURE_PROMPT_CHAR
}

prompt_newline() {
  echo -n "\n"
}

# Combines all prompt elements
build_prompt() {
  RETVAL=$?
  prompt_newline
  prompt_dir
  prompt_git
  prompt_newline
  prompt_status_char
}

PROMPT='%{%f%k%b%}$(build_prompt) %{%f%k%b%}'
