yum install -y ruby ruby-devel lua lua-devel luajit \
luajit-devel ctags python python-devel cmake\
python3 python3-devel tcl-devel \
perl perl-devel perl-ExtUtils-ParseXS \
perl-ExtUtils-XSpp perl-ExtUtils-CBuilder \
perl-ExtUtils-Embed ncurses-devel
#
git clone https://github.com/vim/vim.git
cd vim
./configure \
--with-features=huge \
--enable-multibyte \
--enable-rubyinterp=yes \
--enable-pythoninterp=dynamic \
--with-python-config-dir=/lib64/python2.7/config \
--enable-python3interp \
--with-python3-config-dir=/usr/lib64/python3.6/config-3.6m-x86_64-linux-gnu \
--enable-perlinterp=yes \
--enable-luainterp=yes \
--enable-gui=gtk2 \
--enable-cscope \
--prefix=/usr/local

make 
make install
