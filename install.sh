#!/bin/bash
#Menu Driven Shell Script for Easy installion of S/W
#Author: Tikaram Mardi

while :
	do

	clear
	 echo " ***************************Main Menu********************** "

	 echo " 1. Install Google Chrome"
	 echo " 2. Install Intelliji IDE"
	 echo " 3. Install VirtualBox "
	 echo " 4. Install DosBox"
	 echo " 5. Update and Upgrade "

	 echo " 6. Exit "
	 echo "Enter your Choice:"

	 read option

	 case $option in
		 1) echo "***************Installing Google Chrome *************";
			 wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

			 sudo apt install libappindicator1 libdbusmenu-glib4 libdbusmenu-gtk4 libindicator7 libpango1.0-0 libpangox-1.0-0

			 sudo dpkg -i google-chrome-stable_current_amd64.deb;;

		2) echo  "************Installing IntelliJi IDE***************";
			echo " Error occured!!"
			;;
		3) echo " Installing VirtualBox";
			sudo apt-get install virtualbox
			echo "VirtualBox Installed Successfully"
			;;

		4) echo " Installing DoxBox";
			sudo apt-get install dosbox
			echo "DosBox Installed Successfully";;

		5) echo " ************************Update $ Upgrade*************";
			sudo apt update

			sudo apt upgrade

			;;
		6) echo " Exiting $USER";
			exit 1;;

		*) echo " $option is an Invalid Option";
		   echo "Press Enter to continue";
		   read enterKey;;

	esac
done

