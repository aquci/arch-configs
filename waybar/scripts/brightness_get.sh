#!/bin/bash

VAL=$(ddcutil getvcp 10 --bus=4 2>/dev/null | grep -oP 'current value = \K[0-9]+')

[ -z "$VAL" ] && VAL="--"

echo $VAL
