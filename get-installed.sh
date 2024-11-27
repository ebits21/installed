#!/bin/bash

echo "Saving list of installed flatpaks..."
flatpak list --columns=application,origin --app | grep "flathub" | awk '{print $1}' > flatpaks.txt

sleep 2s

git add flatpaks.txt
git commit -m "Update Flatpak List $(date)"

echo "Saving list of installed gnome extensions..."
gnome-extensions list --enabled > extensions.txt

sleep 2s

git add extensions.txt
git commit -m "Update Gnome Extensions List $(date)"

echo "Saving list of installed brew programs..."
brew bundle dump --file=Brewfile.txt --force

sleep 2s

git add Brewfile.txt
git commit -m "Update Brewfile list $(date)"

echo "Pushing to github"
git push -u origin main
