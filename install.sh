#!/bin/sh

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

if [ -e ~/.icons/wow64 ]
then
   echo wow64 installation found at home folder, uninstalling...
   sudo rm -R ~/.icons/wow64
fi

if [ -e ~/.icons/wow64-Light ]
then
   echo wow64-Light installation found at home folder, uninstalling...
   sudo rm -R ~/.icons/wow64-Light
fi

if [ -e /usr/share/icons/wow64 ]
then
   echo wow64 installation found at system icon themes, uninstalling...
   sudo rm -R /usr/share/icons/wow64
fi

if [ -e /usr/share/icons/wow64-Light ]
then
   echo wow64-Light installation found at system icon themes, uninstalling...
   sudo rm -R /usr/share/icons/wow64-Light
fi



echo Installing theme at /usr/share/icons

sudo cp -fr wow64 /usr/share/icons
sudo cp -fr wow64-Light /usr/share/icons

echo Creating icon theme cache

sudo gtk-update-icon-cache -q /usr/share/icons/wow64
sudo gtk-update-icon-cache -q /usr/share/icons/wow64-Light
