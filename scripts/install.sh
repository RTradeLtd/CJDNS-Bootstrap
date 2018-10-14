#! /bin/bash

echo "[INFO] Updating system"
sudo apt update -y 
echo "[INFO] Uprading system"
sudo apt upgrade -y
echo "[INFO] Installing install tools"
sudo apt install nodejs git build-essential python2.7 git -y
echo "[INFO] Downloading cjdns"
cd ~ || exit
git clone https://github.com/cjdelisle/cjdns.git cjdns
cd cjdns || exit
echo "[INFO] Installing cjdns"
./do
echo "[INFO] Installed cjdns, sleeping for 5 seconds"
sleep 5
echo "[INFO] Configuring cjdns"
./cjdroute --genconf > "$HOME/cjdroute.conf"