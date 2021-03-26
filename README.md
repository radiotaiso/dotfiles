# dotfiles
Simple backup and deploy

## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```

2. Clone repo into new hidden directory. 

```zsh
git clone git@github.com:UpsetPelican/dotfiles.git .dotfiles
```

3. Create symlinks in the Home directory to the real files in the repo.

```zsh
chmod +x make-symlinksv2.sh
./make-symlinksv2.sh # Backups are stored in dotfiles/backups
```

4. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# These could also be in an install script.
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
cd .dotfiles
# Install brewfile
brew bundle
# Install Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Troubleshooting

You were using github but moved to gitlab? 

```
cd existing_repo
git remote rename origin old-origin
git remote add origin git@<newrepo>
```


#### Source
- [Managing Your Dotfiles With Git](https://medium.com/better-programming/managing-your-dotfiles-with-git-4dee603a19a2)
- [Beyond Dotfiles by Fireshipio](https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds)
