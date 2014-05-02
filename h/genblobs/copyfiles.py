#!/usr/bin/env python
import sys
import os

# Copy missing files to a local proprietary/ directory.
#   Call `copyfiles.py out.diff'
zd="/home/yousong/android/yousong/V2.3.039.P1.121109.5860/UENCKPLY"
sysroot=zd + "/system.img.d"
datroot=zd + "/userdata.img.d"
targdir = os.getcwd() + "/proprietary"
if os.path.exists(targdir):
	os.system("rm -r '%s'" % targdir)
os.makedirs(targdir)

def main():
	diff = sys.argv[1]
	f = open(diff, "rb")
	while True:
		l = f.readline()
		if len(l) == 0:
			break
		if not l.startswith("+/"):
			continue
		l = l.strip()
		l = l[1:]
		bn = os.path.basename(l)
		if bn.endswith(".apk") or bn.endswith(".odex") \
				or bn.endswith(".ogg") \
				or bn.endswith(".wav") \
				or bn.endswith(".zip") \
				or bn.startswith("CP_") \
				or bn.startswith("libCP_") \
				or bn.find("_test") != -1 \
				or bn.find("-test") != -1:
					continue
		if l.startswith("/system"):
			sl = l[len("/system"):]
			p = sysroot + sl
			pass
		elif l.startswith("/data"):
			sl = l[len("/data"):]
			p = datroot + sl
			pass
		else:
			sys.stderr.write("Unknown line found: %s.\n" % l)
			continue;

		if os.path.islink(p):
			continue

		np = targdir + l
		d = os.path.dirname(np)
		sys.stderr.write("Copying: %s\n" % l)
		if not os.path.isdir(d):
			os.makedirs(d)
		os.system("cp -aPd '%s' '%s'" % (p, np))
	f.close()

if __name__ == "__main__":
	main()
