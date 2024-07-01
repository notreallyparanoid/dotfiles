# Completion 
[[ -d $HOME/.cache/zsh ]] || mkdir -p $HOME/.cache/zsh
autoload -Uz +X compinit && compinit -d $HOME/.cache/zsh/zcompdump
zstyle ':completion:*:' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# History
HISTSIZE=10
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Aliases
alias ls='ls -v --color'
alias nvimconfig="( cd $HOME/.config/nvim ; nvim . )"
alias vim="nvim"
export EDITOR="nvim"

# Prompt
bindkey -v
bindkey "^?" backward-delete-char
bindkey "^U" backward-kill-line
bindkey "^A" vi-beginning-of-line
bindkey "^E" vi-end-of-line
export PROMPT='%m:%~$ '
KEYTIMEOUT=1
