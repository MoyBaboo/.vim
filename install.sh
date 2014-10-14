cp .vimrc ..
git submodule init
git submodule update
ln bundle/ftcolor.vim/plugin/ftcolor.vim bundle/ftcolor.vim/.
ln bundle/smartgf.vim/plugin/smartgf.vim bundle/smartgf.vim/.
cd bundle/vimproc.vim/ ; make
