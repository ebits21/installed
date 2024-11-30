gnome-extensions list --enabled > /var/home/eric/.dotfiles/installed/gnome-extensions.txt

sleep 40s

cd /var/home/eric/.dotfiles/installed/
git add *
git commit -m "Update Gnome Extensions List $(date)"
git push -u origin main
