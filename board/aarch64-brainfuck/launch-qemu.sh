#!/bin/bash

# Create debug symbols
output/host/bin/aarch64-buildroot-linux-uclibc-objcopy \
	output/build/linux-4.19.16/vmlinux kernel.sym

# Start QEmu, and wait for gbd
output/host/bin/qemu-system-aarch64 \
	-s -S \
	-M virt -cpu cortex-a53 -m 256 \
	-kernel output/images/Image \
	-append 'root=/dev/sda rootfstype=ext4 nokaslr' \
	-drive file=output/images/rootfs.ext4,format=raw \
	-serial stdio

# usage: 
#  gdb
#  (gdb) file ./kernel.sym
#  (gdb) target remote :1234
#  (gdb) hbreak start_kernel
#  (gdb) c
