#!/bin/bash

USER="tom-doerr"
REPOS=( "bashrc" "tmux-conf" "vimrc" )

for repo in ${REPOS[@]}
do
    if [ ! -d /home/tom/git/$repo/ ]; then
        echo "Directory $repo not found! Cloning..."
        cd ~/git/
        git clone git@github.com:$USER/$repo.git
    else
        echo "Pulling from repository $repo"
        cd ~/git/$repo/
        git pull git@github.com:$USER/$repo.git
    fi
done

echo "Finished!"
