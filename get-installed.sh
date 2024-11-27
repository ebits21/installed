#!/bin/bash

flatpak list --columns=application,origin --app | grep "flathub" | awk '{print $1}' > /var/home/eric/.dotfiles/installed/flatpaks.txt

cd /var/home/eric/.dotfiles/installed/
git add flatpaks.txt
git commit -m "Update Flatpak List $(date)"

gnome-extensions list --enabled > /var/home/eric/.dotfiles/installed/extensions.txt

sleep 30s

git add extensions.txt
git commit -m "Update Gnome Extensions List $(date)"

brew bundle dump --file=/var/home/eric/.dotfiles/installed/Brewfile.txt --force

git add Brewfile.txt
git commit -m "Update Brewfile list $(date)"

git push -u origin main
