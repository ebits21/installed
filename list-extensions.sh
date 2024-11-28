#!/bin/bash

gnome-extensions list --enabled > /var/home/eric/.dotfiles/installed/extensions.txt

sleep 30s

cd /var/home/eric/.dotfiles/installed/
git add extensions.txt
git commit -m "Update Gnome Extensions List $(date)"
git push -u origin main
