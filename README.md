## Magisk OTA Survival

<b>Magisk Module</b><br>
<i>Simple module that copies Magisk's addon.d script into system.</i>

## Description
This module is for custom roms (LineageOS for example) that support addon.d survival script.<br>
Survival scripts are used to backup and restore additional files/installs during a system (rom) update.<br>
<i>Most notably would be a GApps install.</i><br>

When Magisk is installed via recovery, it will also install an addon.d script into the `system/addon.d` directory.<br>
This allows Magisk to survive a an system (rom) OTA update.

---

This module is for devices that do not have a custom recovery (TWRP for example).<br>

It will overlay Magisk's addon.d script into `system/addon.d` when booted into system.<br>
Using the system OTA updater when booted into a custom rom that supports survival scripts.<br>
Magisk's addon.d script will be found and used.<br>
<i>Magisk will remain after the update.</i>

## Warning
This module is only <i>systemless</i> before the first OTA update.<br>
The addon.d script will be restored into `system/addon.d` during the OTA update.<br>
After the first OTA update, this module will not be needed and can be removed.

### Download
Available in the releases tab. [Link](https://github.com/mModule/mSurvival/releases)

### Install
- Copy the zip file to the device.
- Open Magisk, select Modules and then Install from storage.
- Reboot device

### Recent changes
- Initial release.
- Not planned for long-term support.

### Notes
- Feel free to use, change, improve, adapt.
- Remember to share.

### Credits
- The Android Community and everyone who has helped me learn through the years.
- John Wu for all things Magisk.
