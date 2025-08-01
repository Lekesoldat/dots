# dots
Yet another attempt on making sensible dotfiles

## Installation

First install Homebrew:
```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then install packages:
```zsh
brew bundle install
```

Finally, symlink dotfiles:
```zsh
stow <folder> --target ~
```

## Manual Setup Steps

### SSH Keys
Copy public keys from 1Password to local `.ssh` folder:
- `~/.ssh/personal_git.pub` - Personal GitHub key
- `~/.ssh/entur_git.pub` - Work GitHub key

### Directory Structure
Initialize Git repositories for conditional includes to work:
```zsh
mkdir -p ~/dev/entur
cd ~/dev && git init
cd ~/dev/entur && git init
```

This enables automatic Git identity and SSH key