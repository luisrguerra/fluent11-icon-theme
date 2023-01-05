#!/bin/sh

cat << "EOF"
 ____
|____\_________
|              |
|              |
|    ______    | Fluent11
|   / ____ \   | Icon Theme
|___|______|___|

EOF

echo Theme installation

if [ -e ~/.icons/fluent11 ]
then
   echo fluent11 installation found at home folder, uninstalling...
   sudo rm -R ~/.icons/fluent11
fi

if [ -e ~/.icons/fluent11-light ]
then
   echo fluent11-light installation found at home folder, uninstalling...
   sudo rm -R ~/.icons/fluent11-light
fi

if [ -e /usr/share/icons/fluent11 ]
then
   echo fluent11 installation found at system icon themes, uninstalling...
   sudo rm -R /usr/share/icons/fluent11
fi

if [ -e /usr/share/icons/fluent11-light ]
then
   echo fluent11-light installation found at system icon themes, uninstalling...
   sudo rm -R /usr/share/icons/fluent11-light
fi



echo Installing theme at /usr/share/icons

sudo cp -fr fluent11 /usr/share/icons
sudo cp -fr fluent11-light /usr/share/icons

echo Creating icon theme cache

sudo gtk-update-icon-cache -q /usr/share/icons/fluent11
sudo gtk-update-icon-cache -q /usr/share/icons/fluent11-light
