#!/bin/bash
echo "This script installs pdm on Ubuntu 22.04"
curl -sSL https://raw.githubusercontent.com/pdm-project/pdm/main/install-pdm.py | python3 -
echo "adding configure lines to .bashrc"
echo '' >> ~/.bashrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
echo '' >> ~/.bashrc
