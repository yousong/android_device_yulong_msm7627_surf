#!/usr/bin/env bash

MANUFACTURERNAME="yulong"
DEVICES="msm7627_surf"
# File list of the current build.
wof="/home/yousong/android/cm/out/target/product/msm7627_surf/installed-files.txt"
# OEM file lists.
wf="$(pwd)/installed-files-wf.txt"
# Filelist.py in the source repo.
fl="$HOME/android/cm/build/tools/fileslist.py"
# Directory containing system.img.d/ and userdata.img.d/.
r="/home/yousong/android/yousong/V2.3.039.P1.121109.5860/UENCKPLY"

# Call filelist.py and convert it to canonical form.
"$fl" "$r/system.img.d" "$r/userdata.img.d" | \
	sed -e 's/\.img\.d//' | \
	sed -e 's/userdata/data/' \
	>"$wf"

ARCHIVEDIR=archive-$(date +%s)
mkdir $ARCHIVEDIR

for DEVICENAME in $DEVICES
do
  cat "$wf" |
    cut -b 15- |
    sort -f > $ARCHIVEDIR/$DEVICENAME-with.txt
done
for DEVICENAME in $DEVICES
do
  cat "$wof" |
    cut -b 15- |
    sort -f > $ARCHIVEDIR/$DEVICENAME-without.txt
done

diff -u "$ARCHIVEDIR/$DEVICENAME-without.txt" "$ARCHIVEDIR/$DEVICENAME-with.txt" >out.diff
