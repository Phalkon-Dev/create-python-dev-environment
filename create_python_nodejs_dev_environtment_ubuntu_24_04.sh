#!/bin/bash
echo "This script creates a python/nodejs development environment on Ubuntu 24.04"
echo "Also installs vscodium as the default editor"
echo "It may work on other future versions of Ubuntu, but it has not been tested"
echo "It wil NOT work on older versions."
echo "It may work on other Linux Debian/Ubuntu based distributions, but it has not been tested"

echo "This script assumes that you have already installed Ubuntu 24.04, preferebly a fresh install"
echo
echo "Do you want to continue? (y/n)"
read answer
if [ "$answer" != "y" ] && [ "$answer" != "Y" ] ; then
    echo "Exiting..."
    exit 1
fi  

echo "Updating and upgrading Ubuntu"
sudo apt update && apt upgrade -y

echo "Installing necesary packages"
sudo apt install -y git curl build-essential make libssl-dev libffi-dev python3-dev python3-pip python3-venv libbz2-dev lzma liblzma-dev libsqlite3-dev openssl python3-tk tk-dev libreadline-dev libncurses-dev pgadmin4 -y

echo "Installing vscodium"
sudo snap install --classic codium

echo "Installing pyenv"
bash install-pyenv.sh

echo "Installing pdm"
bash install-pdm.sh

echo "Installing nodejs"
bash install-nodejs.sh

echo  "Verifying instalations"
pyenv --version
pdm --version
node --version
npm --version
codium --version

echo ''
echo "Done!"

