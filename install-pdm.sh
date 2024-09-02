
echo "This script installs pdm on Ubuntu 22.04 and 24.04"
curl -sSL https://pdm-project.org/install-pdm.py | python3 -
echo "adding configure lines to .bashrc"
echo '' >> ~/.bashrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
echo '' >> ~/.bashrc
