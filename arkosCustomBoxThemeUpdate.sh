#!/bin/bash
# Simple Theme Updating Script
# Usage :
#   Replace the URL by the correct one for your theme.
#   Theme folder name should match the repository name.
sudo sh -c 'printf "\033c" > /dev/tty1'
printf "\nDownloading archive...\n"
sudo wget https://github.com/Jetup13/es-theme-custom-box/archive/main.zip -O ./update.zip
if unzip -qt update.zip | grep 'No errors detected';then
    printf "\nUnzipping archive..."
    sudo unzip -qo update.zip -d \..
    printf "\nTheme updated successfully."
    sleep 3
else
    printf "\nTheme update have failed because the archive did not download correctly."
    printf "\nCheck your connection and try again.\n"
    sleep 6
fi
sudo rm update.zip