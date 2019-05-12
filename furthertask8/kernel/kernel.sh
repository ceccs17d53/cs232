#!/bin/sh

wget http://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.0.10.tar.xz
xz -d -v linux-5.0.10.tar.xz
cd linux-5.0.10
cp /boot/config-$(uname -r) .config
make menuconfig
sudo make
sudo make modules_install
sudo make install
sudo update-initramfs -c -k 5.0.10
sudo update-grub

