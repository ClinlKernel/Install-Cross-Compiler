# Install-Cross-Compiler
Installs the Cross compiler required in order to build CLINL (clinl.org)

## Usage
Simply make the script executable and execute it. The script assumes that you have installed the dependencies listed here: https://wiki.osdev.org/GCC_Cross-Compiler

## Actions
The script will mostly do what this tutorial reccomends: https://wiki.osdev.org/GCC_Cross-Compiler
It will download the binutil's and gcc's source (approx 300mb) and will compile them to the folder $HOME/opt/cross.
It creates a folder called "clinl_cc_build___" inside of the HOME folder, which will then be removed completely. If you have a folder that is called like that, rename it or back it up!
