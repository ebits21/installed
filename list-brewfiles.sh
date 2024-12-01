cd /var/home/eric/.dotfiles/installed/
brew bundle dump --force 2>&1 | logger

git add Brewfile
git commit -m "Update Brewfile list $(date)"
git push -u origin main
