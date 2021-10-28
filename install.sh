echo  ____
echo |____\_________
echo |              |
echo |              |
echo |    ______    | Wow64
echo |   / ____ \   | Icon Theme
echo |___|______|___|

echo Theme installation

echo removing possible old theme files

sudo rm -R /usr/share/icons/wow64
sudo rm -R /usr/share/icons/wow64-Light

echo Installing theme at /usr/share/icons

sudo cp -fr wow64 /usr/share/icons
sudo cp -fr wow64-Light /usr/share/icons

echo creating icon theme cache

sudo gtk-update-icon-cache -q /usr/share/icons/wow64
sudo gtk-update-icon-cache -q /usr/share/icons/wow64-Light
