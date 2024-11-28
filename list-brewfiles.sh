#!/bin/bash
brew bundle dump --file=/var/home/eric/.dotfiles/installed/Brewfile.txt --force

cd /var/home/eric/.dotfiles/installed/
git add Brewfile.txt
git commit -m "Update Brewfile list $(date)"
git push -u origin main
