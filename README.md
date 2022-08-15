## This is my Neovim config.

## Installation

1. comment impatient in `init.lua`
2. :PackerInstall
3. :PackerCompile
1. uncomment impatient in `init.lua`
1. Modify `./_machine_specific.vim` properly if necessary
1. 
    ```
    yay -S figlet cow python-pynvim ranger ueberzug lolcat efm-langserver
    ```
1.
    ```
    pip install jupyter_ascending
    jupyter nbextension install --py --sys-prefix jupyter_ascending
    jupyter nbextension     enable jupyter_ascending --sys-prefix --py
    jupyter serverextension enable jupyter_ascending --sys-prefix --py
    ```
1. :COQdeps
