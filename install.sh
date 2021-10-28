cat << "EOF"
 ____
|____\_________
|              |
|              |
|    ______    | Wow64
|   / ____ \   | Icon Theme
|___|______|___|

EOF

echo Theme installation

echo Removing possible old theme files

sudo rm -R /usr/share/icons/wow64
sudo rm -R /usr/share/icons/wow64-Light

sudo rm -R ~/.icons/wow64
sudo rm -R ~/.icons/wow64-Light

echo Installing theme at /usr/share/icons

sudo cp -fr wow64 /usr/share/icons
sudo cp -fr wow64-Light /usr/share/icons

echo Creating icon theme cache

sudo gtk-update-icon-cache -q /usr/share/icons/wow64
sudo gtk-update-icon-cache -q /usr/share/icons/wow64-Light
