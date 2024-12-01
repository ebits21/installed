
brew bundle dump --file=/var/home/eric/.dotfiles/installed/Brewfile --force

git add /var/home/eric/.dotfiles/installed/Brewfile
git commit -m "Update Brewfile list $(date)"
git push -u origin main
