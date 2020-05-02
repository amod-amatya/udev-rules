#!/bin/bash

echo "Writing udev rules to rules.d"
echo "Adding script for detecting sdcard"
echo "logs stored in /tmp/device_manager.log"

mv 99-sdcard.rules /etc/udev/rules.d
mv sdcard_added.sh sdcard_removed.sh /bin/

udevadm control --reload && udevadm trigger


