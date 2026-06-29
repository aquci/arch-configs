#!/usr/bin/env bash

awk '
/MemTotal/ {t=$2}
/MemFree/ {f=$2}
/Buffers/ {b=$2}
/^Cached:/ {c=$2}
END {
    used = t - (f + b + c)
    printf " %.1fG\n", used/1024/1024
}
' /proc/meminfo
