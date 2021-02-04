# dotfiles
Simple backup and deploy

## Things to consider

- This will only replace dotfiles found in the `files` directory in your local and ignore everything else
- dotfiles inside `.config` or other nested directories are still out of scope
- Your old dotfiles are NOT deleted, they are relocated to `dotfiles/backups`

## How to use
1. Clone repo
2. Grant execution permissions with ```chmod +x make-symlinksv2.sh```
3. Run `./make-symlinksv2.sh`
4. ??????
5. PROFIT!

#### Source
[Managing Your Dotfiles With Git](https://medium.com/better-programming/managing-your-dotfiles-with-git-4dee603a19a2)
