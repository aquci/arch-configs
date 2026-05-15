#!/usr/bin/env bash

# HDMI (Acer)
B1=$(ddcutil -b 4 getvcp 10 | grep -oP 'current value =\s*\K\d+')

# DP (Xiaomi)
B2=$(ddcutil -b 5 getvcp 10 | grep -oP 'current value =\s*\K\d+')

# Среднее значение
AVG=$(( (B1 + B2) / 2 ))

echo $AVG

