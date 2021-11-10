cat << "EOF"
 ____
|____\_________
|              |
|              |
|    ______    | Wow64
|   / ____ \   | Icon Theme
|___|______|___|

EOF

echo Theme configuration


if [ -e ~/.icons/wow64 ]
then
   echo wow64 installation found at home folder, changing system icon theme configuration...
   gsettings set org.gnome.desktop.interface icon-theme 'wow64'
   
fi

if [ -e /usr/share/icons/wow64 ]
then
   echo wow64 installation found at system icon themes, changing system icon theme configuration...
   gsettings set org.gnome.desktop.interface icon-theme 'wow64'
fi

