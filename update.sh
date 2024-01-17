#!/bin/bash


clear 
echo "##################################################"
echo "         Run after installing Kali Linux          "                                      	
echo " This will reboot the Machine after Installation  "
echo "##################################################"
sleep 3
clear
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get clean
apt-get -y install ntp
cp -f desktop-grub.png /usr/share/images/desktop-base/
cp -f kali-laminaria-16x9.png /usr/share/backgrounds/kali/
cp -f grub-4x3.png /boot/grub/themes/kali/
cp -f grub-16x9.png /boot/grub/themes/kali/
cp -f desktop-background /usr/share/images/desktop-base
apt-get install -y linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,')
dpkg -i dkms_3.0.12-1_all.deb
dpkg -i b43-fwcutter_019-4_amd64.deb
dpkg -i firmware-b43-installer_019-4_all.deb
dpkg -i firmware-b43legacy-installer_019-4_all.deb
dpkg -i broadcom-sta-dkms_6.30.223.271-23_all.deb
modprobe -r b44 b43 b43legacy ssb brcmsmac bcma
modprobe wl
apt-get -y  install grub-customizer
cd ..
git clone https://github.com/aircrack-ng/rtl8812au.git
cd rtl8812au
make 
make install
reboot
