#!/bin/sh

if [ ! -f ~/.vim/autoload/plug.vim ]; then
    echo "install vim-plug..."
    mkdir -p ~/.vim/autoload ~/.vim/plugged
    git clone https://hub.nuaa.cf/junegunn/vim-plug.git ~/.vim/plugged/vim-plug > /dev/null 2>&1 || {
        echo "Network error, install vim-plug failed!"
        exit 1
    }
    cp ~/.vim/plugged/vim-plug/plug.vim ~/.vim/autoload/
fi

echo "source ~/.vim/basic.vim" > $HOME/.vimrc 
echo "source ~/.vim/plugins.vim" >> $HOME/.vimrc

echo "vim dotfile install succsess, exec :PlugInstall after VIM running!"
echo ""
