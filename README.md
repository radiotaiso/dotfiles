# dotfiles
Simple backup and deploy

## Things to consider

- This will only replace dotfiles found in the `files` directory to your `$HOME` directory and ignore everything else
- dotfiles inside `.config` or other nested directories are still out of scope
- Your old dotfiles are NOT deleted, they are relocated to `dotfiles/backups`

## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```

2. Clone repo into new hidden directory. 
3. 
```zsh
git clone git@github.com:UpsetPelican/dotfiles.git .dotfiles
```

3. Create symlinks in the Home directory to the real files in the repo.

```zsh
chmod +x make-symlinksv2.sh
./make-symlinksv2.sh
```

4. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles && brew bundle
```


#### Source
[Managing Your Dotfiles With Git](https://medium.com/better-programming/managing-your-dotfiles-with-git-4dee603a19a2)
[Beyond Dotfiles by Fireshipio](https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds)
