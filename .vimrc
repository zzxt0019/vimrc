if has("windows")
  source $VIM/plug.vimrc
  source $VIM/base.vimrc
  source $VIM/mapping.vimrc
else
  source $HOME/.vim/plug.vimrc
  source $HOME/.vim/base.vimrc
  source $HOMW/.vim/mapping.vimrc
endif

