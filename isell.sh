#!/bin/bash
# installer for ethioRAT
# created by : dirty19

# staging
echo [*] Staging process...
mkdir ~/.ethioRAT
cd ..
mv MK01-ethioRAT/* ~/.ethioRAT
rm -rf ethioRAT
cd ~/.OethioRAT
echo [+] Completed

#  get tools
echo [*] Installing tools...
apk update
apk add sshpass
apk add python3
echo [+] Completed

# set up alias workflow
echo [*] Setting up alias...
echo "alias ethioRAT=\"python3 $(pwd)/main.py\"" >> ~/.bashrc
echo [+] Completed

# clean up
echo [+] Installation Completed
echo "- please restart your terminal"
echo "- in bash, type 'ethioRAT' to launch ethioRAT"

