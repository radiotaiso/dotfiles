# Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```

2. Clone repo and checkout MacOS branch. 

```zsh
git clone git@salsa.debian.org:uriel/dotfiles.git .dotfiles
cd .dotfiles
git checkout macos-lyft
```

3. Create symlinks in the Home directory to the real files in the repo.

```zsh
chmod +x make-dot-symlinks.sh
./make-dot-symlinks.sh # Backups are stored in dotfiles/backups
```

4. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# These could also be in an install script.

# Install Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
cd .dotfiles

# Install brewfile
brew bundle
```

# Useful extras

## Set-upstream sux

From git 2.37.0 you can forget about the `--set-upstream <branch_name>` with a simple one time command
```
git config --global --add --bool push.autoSetupRemote true
```
Now, we don’t need to set upstream for every new branch manually. 

## How to update brewfile

```zsh
# Go to the dotfiles folder
cd ~/.dotfiles 
brew bundle dump
```

## MacOS tips 

```
# Fuck autoboot, all my homies have to push the button to boot
sudo nvram AutoBoot=%00 # Disable, %03 is default for enabled

# Silent boot? Hell yeah
sudo nvram BootAudio=%00 # Disable, enabled is %01
```
