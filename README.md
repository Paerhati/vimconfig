# Installation

## Requirements

[Vundle](https://github.com/VundleVim/Vundle.vim)

## Windows

### Run the following from an Administrator Powershell

CD into your home directory

    cd ~

Install Vundle

    git clone https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim

Clone the repository

    git clone https://github.com/Paerhati/vimconfig.git .vim

Point to your new vimrc
(⚠ Warning this will remove your current .vimrc configuration file)


    echo "source ~/.vim/.vimrc" > .vimrc

Launch  Vim

    vim

Install Plugins

    :PluginInstall

