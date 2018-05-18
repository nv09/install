#!/usr/bin/env bash
#Tested on Ubuntu 18.04
sudo apt update
clear
echo " Warning : When the prompt appears, apache2 is highlighted, but not selected."
echo " If you do not hit [SPACE] to select Apache, the installer will not move the necessary files during installation."
echo " Hit SPACE, TAB, and then ENTER to select Apache."
echo " Select yes when asked whether to use dbconfig-common to set up the database."
echo " You will then be asked to choose and confirm a MySQL application password for phpMyAdmin."
sudo apt install phpmyadmin php-mbstring php-gettext
sudo phpenmod mbstring
sudo systemctl restart apache2
start "http://localhost/phpmyadmin"
clear
echo "Username - phpmyadmin"
echo "Password - Entered during installation."
