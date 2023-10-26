# create-python-dev-environment

The main script is `create_python_dev_environment.sh` that install all the dependencies and run the other scripts.

You could run `install-pyenv.sh` and `install-pdm.sh` separetly if you already have de dependencies installed.


## Instructions

```
bash create_python_dev_environtment_ubuntu_22_04.sh
```

## Quick Tip

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
   ```
   pyenv versions
   ```
   ```
   pdm --version
   ```

7. Cleanup files
   ```
   rm -rf create-python-dev-environment-main *.sh
   ```