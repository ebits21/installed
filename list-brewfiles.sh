
brew bundle dump --force --file=/var/home/eric/.dotfiles/installed/Brewfile

git add /var/home/eric/.dotfiles/installed/Brewfile
git commit -m "Update Brewfile list $(date)"
git push -u origin main
