#!/usr/bin/env bash

STEP=${1:-15}

ddcutil -b 4 setvcp 10 - $STEP --noverify
ddcutil -b 5 setvcp 10 - $STEP --noverify
