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

echo Uninstalling Fluent11 icon theme

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




