# Script for Development Environment


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
      
      ```bash
      unzip ~/Downloads/create-python-dev-environment-main.zip
      ```

   3. Copy the files to your main directory:

      ```bash
      cp -v ~/create-python-dev-environment-main/*.sh ~/
      ```


   4. Disregard any messages until script finishes


   5. Restart shell

      ```bash
      eval $SHELL
      ```

   6. Test installation:
      
      Installation will display the versions of the installed packages.


   7. Cleanup files
      
      ```bash
      rm -rf create-python-dev-environment-main *.sh
      ```