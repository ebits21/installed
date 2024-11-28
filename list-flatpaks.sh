#!/bin/bash

flatpak list --columns=application,origin --app | grep "flathub" | awk '{print $1}' > /var/home/eric/.dotfiles/installed/flatpaks.txt

cd /var/home/eric/.dotfiles/installed/
git add flatpaks.txt
git commit -m "Update Flatpak List $(date)"
git push -u origin main
