#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread
while true; do
    if [ "$(dumpsys power | grep 'mHoldingDisplaySuspendBlocker' | grep -o 'true')" = "true" ]; do
        # Get the current date and time
        YEAR=$(date +%Y)
        MONTH=$(date +%m)
        DAY=$(date +%d)
        TIME=$(date +%H_%M_%S)

        # Create the directory if it doesn't exist
        DIR="/sdcard/Screenshots/$YEAR/$MONTH/$DAY"
        mkdir -p $DIR

        # Take the screenshot
        screencap -p "$DIR/$TIME.png"
    fi

    # Wait for 10 seconds
    sleep 10
done
