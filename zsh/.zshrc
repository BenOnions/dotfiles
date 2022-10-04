autoload -Uz compinit
compinit
source <(kubectl completion zsh)

export DOTFILES="$HOME/.dotfiles"
export EDITOR="nvim"

  #import aliases
. $DOTFILES/zsh/aliases

export PATH=$PATH:/home/ben/go/bin

eval "$(thefuck --alias)"   # Magnificent app which corrects your previous console command.
eval "$(starship init zsh)" # using starship for prompt

