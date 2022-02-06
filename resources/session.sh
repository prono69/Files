#!/usr/bin/env bash
# Credits - Ultroid

clear
echo -e "\e[1m"
echo "______  _____ ______  _____  _____   ___   _____ "
echo "| ___ \|  ___|| ___ \|  ___|/  __ \ / _ \ |_   _| "
echo "| |_/ /| |__  | |_/ /| |__  | /  \// /_\ \  | | "
echo "|  __/ |  __| |  __/ |  __| | |    |  _  |  | | "
echo "| |    | |___ | |    | |___ | \__/\| | | |  | | "
echo " \_|    \____/ \_|    \____/  \____/\_| |_/  \_/ "
echo "												"
echo -e "\e[0m"
sec=5
while [ $sec -gt 0 ]; do
    echo -ne "\e[33m Starting dependency installation in $sec seconds...\r"
    sleep 1
    sec=$(($sec - 1))
done
echo -e "\e[1;32mInstalling Dependencies ---------------------------\e[0m\n" # Don't Remove Dashes / Fix it
apt-get update
apt-get upgrade -y
pkg upgrade -y
pkg install python wget -y
wget https://raw.githubusercontent.com/prono69/Files/main/resources/sagen.py
pip uninstall telethon -y && install telethon
clear
python3 ssgen.py
