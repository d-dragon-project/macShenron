#!/bin/bash

clear
echo "================================================================"
echo "This will install Realtek Driver make sure usb wifi is connected" 
echo "This applies to the following chipsets:                         "
echo "RTL8811au                                                       "
echo "RTL8812au                                                       "
echo "RTL8814au                                                       "
echo "NOTE: Your machne will reboot after installation                "
echo "================================================================"
sleep 2

PS3='Please enter your choice: '
options=("Install Wifi Driver" "Show Commands" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Install Wifi Driver")
            echo "Installing Packages and Drivers To Your Machine"
cd ..
git clone https://github.com/aircrack-ng/rtl8812au.git
cd rtl8812au
make 
make install
reboot
            ;;
        "Show Commands")
            echo "cd .."
            echo "git clone https://github.com/aircrack-ng/rtl8812au.git"
            echo "cd rtl8812au"
            echo "make"
            echo "make install"
            echo "reboot"
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
 
