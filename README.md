# dotfiles
~~Simple~~ backup and deploy system settings

Now with `/etc` scripts support!

# WTF IS THIS

Inside of you there are two ~~wolves~~ branches `macos` and `linux`.

One is too lazy to use a single script because paths are different in some config files and the other one can't be bothered to manually type it each time depending on which system so it's easier just to checkout the required branch.

![dumb wolf gif](https://media1.tenor.com/images/e8cce4809ee3c6f3ee954ea6e25cd52f/tenor.gif?itemid=8702502)

# Troubleshooting

## Git Tips and Tricks

### Moved from github to gitlab?

```
cd existing_repo
git remote rename origin old-origin
git remote add origin git@<newrepo>
```

### Need to override os default git user? try local

Git user and email is defined on each branch, `salsa for linux` and `github for macos`, talk about happy coincidences, huh.

If you need to use different emails, you must set up each repo with a local configuration file
```
git config --local user.name "Your Name"
git config --local user.email "email@example.com"
```
The local config will overwrite the global config. So you can use a global config for the most used account.


#### Source
- [Managing Your Dotfiles With Git](https://medium.com/better-programming/managing-your-dotfiles-with-git-4dee603a19a2)
- [Beyond Dotfiles by Fireshipio](https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds)
