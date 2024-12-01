
brew bundle dump --file=/var/home/eric/.dotfiles/installed/Brewfile --force

cd /var/home/eric/.dotfiles/installed/
git add *
git commit -m "Update Brewfile list $(date)"
git push -u origin main
