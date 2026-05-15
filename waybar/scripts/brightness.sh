#!/bin/bash

STEP=15
BUSES="4 5"
LOCK="/tmp/waybar_brightness_lock"

# анти-спам (250 мс)
NOW=$(date +%s%3N)
if [ -f "$LOCK" ] && [ $((NOW - $(cat $LOCK))) -lt 250 ]; then
    exit
fi
echo $NOW > "$LOCK"

for BUS in $BUSES; do
    CURRENT=$(ddcutil getvcp 10 --bus=$BUS --brief | awk '{print $4}')

    if [ "$1" = "up" ]; then
        NEW=$((CURRENT + STEP))
    else
        NEW=$((CURRENT - STEP))
    fi

    [ $NEW -gt 100 ] && NEW=100
    [ $NEW -lt 0 ] && NEW=0

    ddcutil setvcp 10 $NEW --bus=$BUS --noverify >/dev/null 2>&1 &
done

wait
