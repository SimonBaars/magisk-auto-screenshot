#!/system/bin/sh

while true; do
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

    sleep 10
done
