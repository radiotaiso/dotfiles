#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Setup

# dotfiles directory
gitdir=$(pwd)
dir=$gitdir/files
olddir=$gitdir/backups
mkdir -p $olddir
echo "Setup done ..."

# Create array with files in folder
cd $dir
files=$(ls)
echo "Found $files"

# Copy files with same name in home directory to $olddir as backup
# Links new dotfile to home path and adds (.) dot prefix
for file in $files; do
    mv ~/.$file $olddir
    ln -s $dir/$file ~/.$file
    echo "$file backedup and symlinked"
done