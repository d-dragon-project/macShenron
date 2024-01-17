#!/bin/bash


clear 
echo "##################################################"
echo "         Run after installing Kali Linux          "                                      	
echo " This will reboot the Machine after Installation  "
echo "##################################################"
sleep 2

PS3='Please enter your choice: '
options=("Update and Upgrade Packages" "Show Commands" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Update and Upgrade Packages")
            echo "Installing Updates and Upgrades To Your Machine"
clear
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get clean
apt-get -y install ntp
cp -f desktop-grub.png /usr/share/images/desktop-base/
cp -f grub-4x3.png /boot/grub/themes/kali/
cp -f grub-16x9.png /boot/grub/themes/kali/
apt-get -y  install grub-customizer
reboot
        ;;
        "Show Commands")
            echo "apt-get update"
            echo "apt-get upgrade"
            echo "apt-get dist-upgrade"
            echo "apt-get clean"
            echo "apt-get -y install ntp"
            echo "chmod +x BCM4331.sh"
            
            
;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
 
