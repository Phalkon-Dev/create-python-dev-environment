# Creating A Development Environment


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
      ```


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

      You can add to this file anything that reduces the typing of long repetitive commands.


   9. Install Warp
      
      Download .deb from https://www.warp.dev/,
      Install it with gdebi.


   10. If using Ubuntu Mate, set Brave, Caja, PgAdmin4, VSCodium and Warp as favorites to easy access.


   11. Github configuration
   
       Configure name and email:

       ```bash
       git config --global user.name "Your Name"
       git config --global user.email "your@email.com"
       ```

       Create a ssh pair key, if you want more security enter a parafrase. Normally it's not use.

       ```bash
       ssh-keygen -t ecdsa -C "your@email.com"
       ```

       Type <ENTER> to all the questions and petitions. The key pair (`id_ecdsa` and id_ecsda.pub` will be stored in ~/.ssh

       Create a https://github.com account with your email if you don't have it. If you have a personal account it's recommended that you create an account with the corporate email.

       Show and copy the contents of the public key:

       ```bash
       cat ~/.ssh/id_ecdsa.pub
       ```

       Copy the content. In your github account go to your avatar icon, then to Settings, in the right SSH and GPG Keys. Click on New SSH key. Give it a name with the format email+OpSystem+(VM if is the case)+name_physical_machine. This is only a suggestion but permits to know the origin of the ssk key. Finally copy the content of the public key and save. You are ready to use github.
       
