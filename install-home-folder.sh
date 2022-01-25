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

echo Theme installation at user home folder


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


echo Installing theme at ~/.icons

sudo cp -fr wow64 ~/.icons
sudo cp -fr wow64-Light ~/.icons

echo Creating icon theme cache

sudo gtk-update-icon-cache -q ~/.icons/wow64
sudo gtk-update-icon-cache -q ~/.icons/wow64-Light
