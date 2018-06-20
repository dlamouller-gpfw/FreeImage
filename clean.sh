#!/bin/sh

SOURCE=Source
NOW=$(date '+%F %Hh-%Mm-%Ss')

echo $NOW
for i in Release Debug
do
	if [ -d $i ]; then
		rm -rf $i
		echo $NOW "Deleted: " $i
	else
		echo $NOW "Not exist: " $i
	fi
	if [ -d TestAPI/$i ]; then
		rm -rf TestAPI/$i
		echo $NOW "Deleted: " TestAPI/$i
	else
		echo $NOW "Not exist: " TestAPI/$i
	fi
	for j in FreeImage freeimagelib Source LibJPEG LibPNG LibMNG LibTIFF LibTIFF4 ZLib OpenEXR LibOpenJPEG LibRawLite LibWebP LibJXR
	do
		if [ -d $SOURCE/$j/$i ]; then
			rm -rf $SOURCE/$j/$i
			echo $NOW "Deleted: " $SOURCE/$j/$i
		else
			echo $NOW "Not exist: " $SOURCE/$j/$i
		fi
	done
done
find . -name '*.pch' -exec rm -f {} ";"
find . -name '*.ncb' -exec rm -f {} ";"
find . -name '*.opt' -exec rm -f {} ";"
find . -name '*.plg' -exec rm -f {} ";"
find . -name '*.obj' -exec rm -f {} ";"
find . -name '*.dll' -exec rm -f {} ";"
find . -name '*.exe' -exec rm -f {} ";"
find . -name '*.bsc' -exec rm -f {} ";"
find . -name '*.bak' -exec rm -f {} ";"
find . -name '*.pdb' -exec rm -f {} ";"
find . -name '*.sql' -exec rm -f {} ";"
find . -name '*.mdb' -exec rm -f {} ";"
find . -name '*.lib' -exec rm -f {} ";"
find . -name '*.exp' -exec rm -f {} ";"
find . -name '*.ilk' -exec rm -f {} ";"
find . -name '*.idb' -exec rm -f {} ";"
find . -name '*.o' -exec rm -f {} ";"
find . -name '*.o-ppc' -exec rm -f {} ";"
find . -name '*.o-i386' -exec rm -f {} ";"
