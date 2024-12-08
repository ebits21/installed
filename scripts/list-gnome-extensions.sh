gnome-extensions list --enabled | sort > /var/home/eric/.dotfiles/installed/data/gnome-extensions.txt

sleep 40s

cd /var/home/eric/.dotfiles/installed/data
git add gnome-extensions.txt
git commit -m "Update Gnome Extensions List $(date)"
git push -u origin main
