#!/bin/bash
echo "This script installs nvm then nodejs on Ubuntu 22.04 and 24.04"
echo "Installs the latest version LTS of nodejs."
echo "Later, using nvm, you can install other versions of nodejs."
echo " "
echo "Installing nvm..."
wget -q -O- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
echo "Done."
echo " "
echo "Installing nodejs..."
nvm install nodejs --lts
echo "Done."
echo " "
