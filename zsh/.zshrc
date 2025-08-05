export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  mise
  zsh-autosuggestions
  docker
)

source $ZSH/oh-my-zsh.sh

alias cd="z"
alias cat="bat"
alias pn="pnpm"
alias vc="code"
alias ld='eza -lD'  # lists only directories (no files)
alias lf='eza -lfh'  # lists only files (no directories) with column headers
alias lh='eza -dl .* --group-directories-first'  # lists hidden files and directories
alias ls='eza -alh --group-directories-first'  # lists everything with directories first with column headers

# Tool completions and activations
eval "$(mise activate zsh)"
eval "$(mise completion zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)

# Prompt (should be last to ensure it can access all loaded functions)
eval "$(starship init zsh)"