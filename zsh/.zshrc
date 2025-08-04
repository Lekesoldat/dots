# Autocomplete for Brew
# Note that if you are using Oh My Zsh, it will call compinit for you when you source oh-my-zsh.sh. In this case, make sure eval "$(brew shellenv)" is called before sourcing oh-my-zsh.sh if you’re on Linux, and you should be all set without any additional configuration.
autoload -Uz compinit
compinit

eval "$(mise activate zsh)"
eval "$(starship init zsh)"
