#!/bin/bash
if [ -d ramdisk ]; then 
	cd ./ramdisk/ && rm ../boot.img-ramdisk.cpio.lzma; clear; sleep 5; find . | cpio -o -H newc | lzma > ../boot.img-ramdisk.cpio.lzma
else
	./02-decompress-ramdisk.sh && cd ./ramdisk/ && rm ../boot.img-ramdisk.cpio.lzma; clear; sleep 5; find . | cpio -o -H newc | lzma > ../boot.img-ramdisk.cpio.lzma
	cd ..; rm -Rf ramdisk
fi
