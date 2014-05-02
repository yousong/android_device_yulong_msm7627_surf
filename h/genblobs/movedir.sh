#!/usr/bin/env bash

# Replace device's proprietary directory with the new one.

sourdir="$(pwd)/proprietary/system"
targdir="/home/yousong/android/cm/device/yulong/msm7627_surf/proprietary/system"
[ -d "$targdir" ] && rm -rf "$targdir/system"
mv "$sourdir" "$(dirname $targdir)"
