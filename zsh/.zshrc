# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "lukechilds/zsh-nvm"

# Load and initialise completion system
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# pnpm
export PNPM_HOME="/Users/taitran/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# fzf
source <(fzf --zsh)

export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=50000
export SAVEHIST=$HISTSIZE
export HIST_IGNORE_PATTERN="(fg|bg|cd ..|ls|l[alsh]*|clear|vim *|less *|git push -f|tig)"
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
# fzf end

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Key maps
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word


## Alias
alias vi="nvim"
alias ls="ls -1 --color=always" 
alias gst="git status"

export prj="$HOME/Project"
export notes="$HOME/Documents/MyNotes"

# TFenv
export PATH="$HOME/.tfenv/bin:$PATH"

# Prompt
eval "$(starship init zsh)"
