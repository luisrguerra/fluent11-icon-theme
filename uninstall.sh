cat << "EOF"
 ____
|____\_________
|              |
|              |
|    ______    | Wow64
|   / ____ \   | Icon Theme
|___|______|___|

EOF

echo Removing theme files

sudo rm -R /usr/share/icons/wow64
sudo rm -R /usr/share/icons/wow64-Light

sudo rm -R ~/.icons/wow64
sudo rm -R ~/.icons/wow64-Light
