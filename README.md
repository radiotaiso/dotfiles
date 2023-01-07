# Introduction

Home of my dotfiles, second iteration, using GNU Stow.

# Pre-requisites

## Darwin
Apple dev tools
```zsh
xcode-select --install
```

Install Homebrew
```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## All
Oh my zsh is cool
```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

# This is what you came for

1. Clone repo, it's built around the assumption that it lives in your `$HOME` folder.

```zsh
git clone https://github.com/radiotaiso/dotfiles.git ~/.dotfiles
```

2. Execute `da_wae`. This script will stash unsaved stuff, pull from `main` pop the stash and then the magic of `stow`.

```zsh
cd .bin
./da_wae
```

4. Install brewfile
```zsh
brew bundle --file ~/.dotfiles/bundles/Brewfile
```

# Useful extras

## Archived utilities under `bin/stock-sux`

- `Posy's Cursor.zip ` [Posy's improved cursors for Windows 10 (and older)](http://www.michieldb.nl/other/cursors/)
- `Atkinson Hyperlegible.zip` [Braille Institute's high readability open source font](https://brailleinstitute.org/freefont)

## Set-upstream is annoying

From git 2.37.0 you can forget about the `--set-upstream <branch_name>` with a simple one time command
```
git config --global --add --bool push.autoSetupRemote true
```
Now, we don’t need to set upstream for every new branch manually. 

## How to update brewfile
If you already have one brewfile in the same path there's a paddlin'

```zsh
# Go to the dotfiles folder
cd ~/.dotfiles 
brew bundle dump
```

## Additional MacOS tips 

```
# Fuck autoboot, all my homies have to push the button to boot
sudo nvram AutoBoot=%00 # Disable, %03 is default for enabled

# Silent boot? Hell yeah
sudo nvram BootAudio=%00 # Disable, enabled is %01
```
