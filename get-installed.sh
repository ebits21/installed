#!/bin/bash
ERIC_INSTALLED=/var/home/eric/.dotfiles/installed

echo "Saving list of installed flatpaks..."
flatpak list --columns=application,origin --app | grep "flathub" | awk '{print $1}' > $ERIC_INSTALLED/flatpaks.txt

sleep 10s

cd $ERIC_INSTALLED
git add flatpaks.txt
git commit -m "Update Flatpak List $(date)"

echo "Saving list of installed gnome extensions..."
gnome-extensions list --enabled > $ERIC_INSTALLED/extensions.txt

sleep 10s

cd $ERIC_INSTALLED
git add extensions.txt
git commit -m "Update Gnome Extensions List $(date)"

echo "Saving list of installed brew programs..."
brew bundle dump --file=$ERIC_INSTALLED/Brewfile.txt --force

sleep 10s

cd $ERIC_INSTALLED
git add Brewfile.txt
git commit -m "Update Brewfile list $(date)"
git push -u origin main

