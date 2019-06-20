#!/bin/bash

# ./link_res.sh /path/to/kernel_drivers_examples/debug

dn=`dirname $1`

files=`ls $1`
for file in $files
do
	if [ -d $1/$file ]
	then
		if [ -f $1/$file/"README.md" ]
		then
			target_name=$1/$file/README.md
			dirname=$(basename $1/$file)
			linkname=$dirname".md"
			if [ ! -f $linkname ]
			then
				ln -s $target_name $linkname
			fi
		fi
	fi
done

pngs=`find $1 -name "*.png"`
for png in $pngs
do
	localpng=`basename $png`
	if [ ! -f $localpng ]
	then
		ln -s $png
	fi
done

# misc links
rm cmd_rockusb.c usbmouse_as_key.c i2c_regmap.c protocol.md lcd.md lp079qx1.png
ln -s $1/usb/cmd_rockusb.c
ln -s $1/usb/usbmouse_as_key.c
ln -s $1/i2c/i2c_regmap.c
ln -s $1/usb/protocol.md
ln -s $dn/lcd.md
ln -s $dn/lp079qx1.png
