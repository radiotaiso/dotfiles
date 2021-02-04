
#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables
#***********************
#*REMEMBER TO FIX PATHS*
#***********************

# dotfiles directory
gitdir=$(pwd)
echo "$gitdir gitdir set \n"
dir=$gitdir/files
echo "$dir dir set \n"

# list of files/folders to symlink in homedir
cd $dir
files=$(ls)
echo "[$files] files to be included \n"
cd $gitdir

# old dotfiles backup directory
olddir=$gitdir/backups
echo "$olddir olddir set \n"

##########

# create dotfiles_old in homedir
mkdir -p $olddir
echo "SET $olddir for backup of any existing dotfiles in ~ \n"

# change to the dotfiles directory
cd $dir
echo "CDd to the $dir directory \n"

# move any existing dotfiles in homedir to dotfiles_old directory (they need to start with .)
# then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving $file from ~ to $olddir \n"
    mv ~/.$file $olddir
    echo "Creating symlink to (dot)$file in home directory from $dir/$file \n"
    ln -s $dir/$file ~/.$file
done