#!/bin/sh

#  install.sh
#  
#
#  Created by David F. Bills on 12/4/14.
#
#  Installs script, login item and sets initial dark interface
#
#  Usage: install.sh DIRECTORY_NAME
#



dir="$1"

[ $# -eq 0 ] && { echo "Usage: $0 dir-name"; exit 1; }

if [ -d "$dir" -a ! -h "$dir" ]

then

echo "$dir found and setting up Dark Interface Dock"
cp assets/com.user.loginscript.plist ~/Library/LaunchAgents/com.user.loginscript.plist
launchctl load ~/Library/LaunchAgents/com.user.loginscript.plist
cp assets/set-dark-interface-dock.sh $dir/set-dark-interface-dock.sh
chmod 700 $dir/set-dark-interface-dock.sh
./$dir/set-dark-interface-dock.sh

echo "Success: You should see dark interface dock"

else
echo "Error: $dir not found or is symlink to $(readlink -f ${dir})."

fi