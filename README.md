# create-python-dev-environment

## Important Note

This scripts or steps assumes a clean installation of any flavor of Ubuntu 24.04: Classic, Mate, Kubutu, etc. We recommend Ubuntu-Mate (https://ubuntu-mate.org/)

## What is installed

- Git
- pyenv
- pdm
- nvm
- nodejs latest LTS
- VSCodium
- PGAdmin4
- Warp (terminal with AI)
- Docker and utilities

## How to install it

### Using the script provided (Not Recommended, it's incomplete)

   The main script is `create_python_nodejs_dev_environment_ubuntu_24_04.sh` that install all the dependencies and run the other scripts.

   You could run `install-pyenv.sh`, `install-pdm.sh`, `install-nodejs.sh` separately if you already have de dependencies installed.

   #### Instructions

   ```
   bash create_python_nodejs_dev_environment_ubuntu_24_04.sh
   ```

   #### Quick Tip

   1. Download the zip file instead of cloning the repository.

   2. Unzip file:
      ```
      unzip ~/Downloads/create-python-dev-environment-main.zip
      ```
   3. Copy the files to your main directory:

      ```
      cp -v ~/create-python-dev-environment-main/*.sh ~/
      ```

   4. Disregard any messages until script finishes

   5. Restart shell

      ```
      eval $SHELL
      ```

   6. Test installation:
      Installation will display the versions of the installed packages.

   7. Cleanup files
      ```
      rm -rf create-python-dev-environment-main *.sh
      ```

### Following the steps:

   1. Update apt and install nala (package installer) and upgrade.
      ```bash
      sudo apt update
      sudo apt install nala -y
      sudo nala update
      sudo nala upgrade -y
      ```

   2. Install dependencies as packages.
      ```bash
      sudo nala install -y git curl build-essential make libssl-dev libffi-dev python3-dev python3-pip python3-venv libbz2-dev lzma liblzma-dev libsqlite3-dev openssl python3-tk tk-dev libreadline-dev libncurses-dev pipx


   3. Install pyenv. (Always check https://github.com/pyenv/pyenv for updates.)
      ```bash
      curl https://pyenv.run | bash
      ```

      Copy the following lines in `~/.bashrc`:
      ```bash
      export PYENV_ROOT="$HOME/.pyenv"
      [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
      eval "$(pyenv init -)"

      eval "$(pyenv virtualenv-init -)"
      ```

      Copy the first three lines above to `~/.profile`

      Restart your terminal
      ```bash
      eval $SHELL
      ```


      if you wish to install a partcular version of python:
      ```bash
      pyenv install 3.12
      ```

   4. Install pdm. (Always check https://pdm-project.org/en/latest/ for updates.)

      ```bash
      pipx pdm
      pipx ensurepath
      ```

   5. Install nvm then nodejs. (Always check https://github.com/nvm-sh/nvm for updates.)
      ```bash
      curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
      ```

      Install latest version of nodejs LTS:
      ```bash
      nvm install --lts
      ```

   6. Install Development tools
      ```bash
      sudo snap install codium --classic
      sudo snap install pgadmin4 brave
      ```

   7. Install Docker

      ```bash
      # Add Docker's official GPG key:
      sudo nala install ca-certificates
      sudo install -m 0755 -d /etc/apt/keyrings
      sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
      sudo chmod a+r /etc/apt/keyrings/docker.asc

      # Add the repository to Apt sources:
      echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
      $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
      sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
      sudo nala update
      ```

      Install docker  apps:
      ```bash
      sudo nala install -y docker-ce docker-ce-cli containerd.io \
      docker-buildx-plugin docker-compose-plugin
      ```

      Asign permitions to user to execute docker cli:
      ```bash
      sudo groupadd docker
      sudo usermod -aG docker $USER
      newgrp docker
      ```

      Configure automatic start of services:
      ```bash
      sudo systemctl enable docker.service
      sudo systemctl enable containerd.service
      ```

      Verification:
      ```bash
      docker ps
      ```

   8. Create an alias file to speed work.
      ```bash
      nano ~/.bash_aliases
      ```

      Copy the following lines:
      ```
      alias a='source .venv/bin/activate'
      alias d='deactivate'
      alias c='codium .'
      alias uvi='uvicorn main:app --reload'
      ```

   9. Install Warp
      Download .deb from https://www.warp.dev/,
      Install it with gdebi.


   10. If using Ubuntu Mate, set Brave, Caja, PgAdmin4, VSCodium and Warp as favorites to easy access.


   11. Github configuration
   

