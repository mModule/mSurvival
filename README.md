## Magisk OTA Survival

<b>Magisk Module</b><br>
<i>Simple module that copies Magisk's addon.d script into system.</i>

## Description
This module is for custom roms (LineageOS for example) that support addon.d survival scripts.<br>
Survival scripts are used to backup and restore additional files/installs during a system (rom) update.<br>
<i>Most notably would be a GApps install.</i><br>

When Magisk is installed via recovery, it will copy it's addon.d script into the `system/addon.d` directory.<br>
<i>This allows Magisk to survive a system (rom) OTA update.</i>

---

For Magisk installs not (or can not be) installed via recovery.<br>
The addon.d script can not be copied into `system/addon.d` since system is mounted read-only.<br>

This module will overlay a copy of the addon.d script into `system/addon.d`.<br>
<i>So it can be found and run with other addon.d script(s) during a system OTA update.</i>

<b>Note: This module only works with addon.d-v2 (A/B slot devices).</b>

## Warning
This module is only <i>systemless</i> before the first OTA update.<br>
Magisk's addon.d script will be restored directly into `system/addon.d` by the OTA updater.<br>
After the first OTA update, this module is no longer needed and can be disabled and/or removed.

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
- John Wu and team for all things Magisk.
