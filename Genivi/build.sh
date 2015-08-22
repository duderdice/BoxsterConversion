
# darryl - got tired of manually executing these steps
# Build from Source on Wiki for qemu-64 target

if [ ! -d "./GDP" ]; then
	mkdir GDP
fi

exit;

GDP_ROOT=~/Projects/BoxsterConversion/Genivi/

cd $GDP_ROOT

# ###################################################
# Step 0 - clone the core git projects, if not already exists
if [ ! -d "./meta-genivi-demo" ]; then
	git clone git://git.projects.genivi.org/meta-genivi-demo
fi

if [ ! -d "./meta-genivi" ]; then
	git clone git://git.yoctoproject.org/meta-ivi
fi

if [ ! -d "./poky" ]; then
	git clone git://git.yoctoproject.org/poky
fi

if [ ! -d "./meta-qt5" ]; then
	git clone https://github.com/meta-qt5/meta-qt5
fi

if [ ! -d "./meta-openembedded" ]; then
	git clone git://git.openembedded.org/meta-openembedded
fi

# ###################################################
# Step 1 - get the core meta code

cd meta-genivi-demo/
git pull


# ###################################################
# Step 2 - get the correct layer revisions

# check the "meta-genivi-demo/README.md" file for desired git tag
cd ../meta-ivi
git checkout 0d780d0cfd38694ae5e6f0198adcb72684b01acc

# check the "meta-genivi-demo/README.md" file for desired git tag
cd ../meta-qt5
git checkout adeca0db212d61a933d7952ad44ea1064cfca747

# check the "meta-genivi-demo/README.md" file for desired git tag
cd ../meta-openembedded
git checkout 6413cdb66acf43059f94d0076ec9b8ad6a475b35

# check the "meta-genivi-demo/README.md" file for desired git tag
cd ../poky
git checkout b630f2f53645fa8f5890b4732f251c354ad525a7

exit


# ###################################################
# Step 3 - setup build variables
cd ../meta-genivi-demo/conf
export TEMPLATECONF=`pwd`
cd $GDP_ROOT


# ###################################################
# Step 4 - initialize environment for build
source poky/oe-init-build-env gdp-src-build


# ###################################################
# Step 5 - execute build
bitbake genivi-demo-platform


# ###################################################
# Step 6 - launch the build target (qemux86 image)

cd $BUILDDIR/tmp/deploy/images/qemux86-64/

# from wiki...
#QEMU_AUDIO_DRV=pa; $HOME/Projects/GDP/meta-genivi-demo/scripts/runqemu bzImage-qemux86-64.bin genivi-demo-platform-qemux86-64.ext3 qemuparams="-soundhw ac97"

#from mailing list...
sudo /usr/bin/qemu-system-x86_64 -kernel ./bzImage-qemux86-64.bin -net nic,vlan=0 -net tap,vlan=0,ifname=tap0,script=no,downscript=no -cpu core2duo -hda ./genivi-demo-platform-qemux86-64.ext3 -vga vmware -no-reboot -soundhw ac97 -m 256 --append "vga=0 uvesafb.mode_option=640x480-32 root=/dev/hda rw mem=256M ip=192.168.7.2::192.168.7.1:255.255.255.0 oprofile.timer=1 "

# ###################################################
# Step 7 - remote into the qemux86 image
# using remmina client, 127.0.0.1:5901 (or whatever) and navigate around

