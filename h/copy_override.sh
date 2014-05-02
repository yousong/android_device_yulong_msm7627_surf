s=/home/yousong/android/yousong/V2.3.039.P1.121109.5860/UENCKPLY/system.img.d
d=/home/yousong/android/cm/device/yulong/msm7627_surf/proprietary/override/
[ -d "$d" ] && rm -rf "$d"
mkdir -p "$d"
for f in $(cat device_msm7627_surf.mk | grep OVERRIDE | grep obj/ | cut -d ':' -f 1 | sed 's/^.*)\///g'); do 
	_d="$d/$f"
	[ -d "$(dirname $_d)" ] || mkdir -p "$(dirname $_d)"
	cp -aPd "$s/$f" "$_d"
done

