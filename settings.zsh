# --- Completion ----------------------------------------------
autoload -Uz compinit
# rebuild completions once per day
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
    compinit
else
    compinit -C
fi

# --- Plugins -------------------------------------------------
ZSHDIR="${${(%):-%x}:A:h}"

source $ZSHDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSHDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSHDIR/plugins/zsh-async/async.zsh

zstyle :prompt:pure:git:branch color red
zstyle :prompt:pure:virtualenv color cyan
source $ZSHDIR/plugins/pure/pure.zsh

# --- Fuzzy Finding -------------------------------------------
source <(fzf --zsh)

# --- Settings ------------------------------------------------
export EDITOR="nvim"
alias vim=nvim
alias l="lsd"
alias ll="lsd -l"
set -o vi

# --- Fast switching of python environments -------------------
VENVDIR=~/Coding/python/envs
function venv() {
  deactivate 2> /dev/null || true
  source $VENVDIR/$1/bin/activate
}
