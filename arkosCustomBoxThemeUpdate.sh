#!/bin/bash
# Replace the URL by the correct one for your theme.
# Theme folder name should match the repo name. 
sudo wget https://github.com/Jetup13/es-theme-custom-box/archive/main.zip -O ./update.zip
sudo unzip -o update.zip -d \..
sudo rm update.zip