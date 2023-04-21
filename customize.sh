#!/system/bin/sh

## Magisk OTA Survival module.
## This module will overlay Magisk's addon.d script into the system/addon.d directory if it exists.
## ipdev @ xda-developers

# __ Define variables. __

### Magisk variables
## MODPATH (path): the path where your module files should be installed.

# ADB Directory
ADB=/data/adb

# __ Define functions. __

### Magisk functions
## set_perm <target> <owner> <group> <permission> [context]

# __ Here we go. __

if [ -d /system/addon.d ]; then
	# Make the module addon.d directory if it does not exist.
	if [ ! -d "$MODPATH"/system/addon.d ]; then
		mkdir -p "$MODPATH"/system/addon.d
	else
		# Remove the previous addon.d script.
		rm "$MODPATH"/system/addon.d/99-magisk.sh
	fi

	# Copy the current addon.d script from magisk to the module directory.
	cp "$ADB"/magisk/addon.d.sh "$MODPATH"/system/addon.d/99-magisk.sh

	# Set owner, group, permission and security.
	set_perm "$MODPATH"/system/addon.d/99-magisk.sh 0 0 0755 u:object_r:system_file:s0
else
	echo "Survival (addon.d) scripts are not supported."
	echo " This module will not be installed."
	rm -rf "$ADB"/modules_update/MagiskSurvival
	exit 1
fi

# __ Finish and Cleanup. __

