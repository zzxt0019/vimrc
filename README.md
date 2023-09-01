# vimrc
windows
~~~shell
# 进入C:/Users/Username目录
git clone https://github.com/zzxt0019/vimrc.git vimfiles
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
~~~
linux
~~~shell
cd ~
git clone https://github.com/zzxt0019/vimrc.git .vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
~~~
