cd /var/home/eric/.dotfiles/installed/
/home/linuxbrew/.linuxbrew/bin/brew bundle dump --force 2>&1 | tee brewout.txt | logger

git add Brewfile
git commit -m "Update Brewfile list $(date)"
git push -u origin main
