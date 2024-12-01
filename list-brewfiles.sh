
brew bundle dump --force --file=/var/home/eric/.dotfiles/installed/Brewfile

cd /var/home/eric/.dotfiles/installed
git add Brewfile
git commit -m "Update Brewfile list $(date)"
git push -u origin main
