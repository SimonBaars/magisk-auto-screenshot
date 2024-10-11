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
    FILENAME="$DIR/$TIME.png"
    screencap -p "$FILENAME"

    # Check if the new file is identical to the previous one
    if [ -f "$PREVIOUS_FILE" ] && cmp -s "$FILENAME" "$PREVIOUS_FILE"; then
        rm "$FILENAME"
    else
        PREVIOUS_FILE="$FILENAME"
    fi

    sleep 10
done
