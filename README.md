# Vimrc

This is my file of config to the Vim editor

## Install

* Install the Plug (Plugin Manager)
    ~~~~
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    ~~~~

* Clone this repository 
* Copy the file __.vimrc__ to home
* Install node and npm and re-compile coc with:

    ~~~
    call coc#util#install()
    [coc.nvim] Update completed
    ~~~
* Install the Coc-Python

    ~~~~
    CocInstall coc-python
    ~~~~

* Install Spell Check

    [Link to tutorial](https://www.vivaolinux.com.br/artigo/Corretor-Ortografico-no-Vim-Guia-definitivo)
