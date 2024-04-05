HISTFILE=~/.zsh_history
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

autoload -Uz compinit && compinit
autoload -U colors && colors

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

PROMPT="%n@%m %~ %# "

cpy() {
  "$@" \
  | tee /dev/tty \
  | perl -pe 'chomp if eof' \
  | pbcopy
}
