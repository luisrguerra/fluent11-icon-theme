cat << "EOF"
 ____
|____\_________
|              |
|              |
|    ______    | Wow64
|   / ____ \   | Icon Theme
|___|______|___|

EOF

echo Theme installation at user home folder

echo Removing possible old theme files

sudo rm -R ~/.icons/wow64
sudo rm -R ~/.icons/wow64-Light

sudo rm -R /usr/share/icons/wow64
sudo rm -R /usr/share/icons/wow64-Light

echo Installing theme at ~/.icons

sudo cp -fr wow64 ~/.icons
sudo cp -fr wow64-Light ~/.icons

echo Creating icon theme cache

sudo gtk-update-icon-cache -q ~/.icons/wow64
sudo gtk-update-icon-cache -q ~/.icons/wow64-Light
