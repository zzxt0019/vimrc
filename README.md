## 结构说明

- ***`main`***可用做自定义入口文件, 已添加`.gitignore`, ***需手动创建***, 用于修改默认环境
- `vimrc`默认的入口文件
- `vimrcs/init.vimrc` 初始配置
- ***`vimrcs/env.vimrc`***本地环境文件, 已添加`.gitignore`, ***需要手动创建***, 将`vimrcs/init.vimrc`中的内容复制过去再修改
- `vimrcs/plug.vimrc`插件配置
- `vimrcs/base.vimrc`基础配置
- `vimrc/mapping.vimrc`映射配置
- `vimrc/ideavim.vimrc`IdeaVim特殊配置

## Vim配置

- Windows

  - `vim`/`gvim`

    进入`C:/Users/username`目录

    执行命令:

    ~~~bat
    git clone https://github.com/zzxt0019/vimrc.git vimfiles
    ~~~

  - `ideavim`

    将`C:/Users/username/vimfiles/.ideavimrc`复制到`C:/Users/username/.ideavimrc`

- Linux

  - 个人系统

    ~~~shell
    cd ~
    git clone https://github.com/zzxt0019/vimrc.git .vim
    ~~~

  - 服务器root

    建议将配置保存在其他目录(例如`~/.vimx`), 通过`vim -u ~/.vimx/vimrc`命令启动. 修改`~/.bashrc`设置别名或在`/usr/bin`中添加脚本快捷启动

    1. 拉取配置

       ~~~shell
       cd ~
       git clone https://github.com/zzxt0019/vimrc.git .vimx
       ~~~

    2. 创建`main`, 以便其他配置也可以从`~/.vimx/`中读取

       在`main`中添加(`.gitignore`中已添加`main`)

       ~~~vimscript
       set rtp+=~/.vimx/
       source vimrc
       ~~~

    3. 修改`vim-plug`存储路径(可以不改, 不改的话默认存储到`~/.vim/plugged`)

       在`vimrcs/env.vimrc`中修改

       ~~~vimscript
       let g:vim_plug_path="~/.vim/plugged"
       ~~~

    4. 创建`vimx`命令为`vim -u ~/.vimx/main`

       - 第1种方法, 创建别名

         修改`~/.bashrc`, 添加一行

         ~~~bash
         alias vimx='vim -u ~/.vimx/main'
         ~~~

         重新加载配置文件

         ~~~shell
         source ~/.bashrc
         ~~~

       - 第2种方法, 创建命令

         在`/usr/bin`创建文件`vimx`, 内容为

         ~~~vimx
         #!/bin/bash
         exec vim -u ~/.vimx/main "$@"
         ~~~

         修改`vimx`权限

         ~~~shell
         chomd +x vimx
         ~~~

  - 服务器非root

    执行`sodu vimx`时无法加载到命令, 应把`服务器root`步骤下的`~路径`改为`绝对路径`
