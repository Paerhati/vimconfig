# Installation

## Requirements

[Choco](https://chocolatey.org/install)

[FZF](https://github.com/junegunn/fzf)

[Vundle](https://github.com/VundleVim/Vundle.vim)

## Windows

### Run the following from an Administrator Powershell

CD into your home directory

    cd ~

Install FZF (If you have not already done so)

    choco install fzf

Install Vundle (If you have no already done so)

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

