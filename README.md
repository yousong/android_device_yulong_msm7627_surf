CyanogenMod and ClockworkMod for Coolpad 5860

## Modes

To boot into bootloader mode, hold down the VolumeUp key when powering on the device.

To boot into recovery mode, hold down BOTH VolumeUp and VolumeDown key when powering on the device.

## ClockworkMod recovery

- Use the Volume key to highlight items, then use Home button to select.
- The Power key at the right side of the phone can be used to lock the screen.
- The Confirmation menu will have many "No" items.  To disable that, you can do the following with in `adb shell`.

		mkdir -p /sdcard/clockworkmod/
		( cd /sdcard/clockworkmod/ && touch .no_confirm )
		( cd /sdcard/clockworkmod/ && touch .one_confirm )

## CyanogenMod ROM

I can only confirm that the following features is supported now.

- Adreno200 GPU.
- Wifi station mode.
- GPS seems to work fine.

The following is not working yet.

- Camera.
- Sound and video play.
- Bluetooth.

The following items are to be tested.

- Sensors.
- GSM or CDMA service.

## Build

1. Retrieve CyanogenMod source.

		repo init -u git://github.com/CyanogenMod/android.git -b cm-7.0.3
		repo sync

2. Put the content of this project into directory `device/yulong/msm7627_surf/`.
3. Apply patch in `patches/` directory for `frameworks/base`.
4. Start the build.

		source build/envsetup.sh
		lunch
		# select yulong_msm7627_surf-eng
		m clobber && m -j4 ; \
		    while true; do echo -ne "\a"  && sleep 1 ; done

5. When the build is done, fail or succeed, bell sound will be played to remind you.
6. The built image will be at the following place.

		out/target/product/msm7627_surf/

## Summary

Coolpad 5860 is my first Android phone which is given to me by a friend about 10 days ago.  So this is my first attempt to work on this platform (of a old version).  Many parts of the ROM are only available in form of binary blobs which makes porting and playing with it quite hard, or even annoying sometimes.  It's kind of magic that Wifi works...  Maybe I will pick up the porting effort later but that will not happen in the near future and not in this way.
