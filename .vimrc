set undolevels=1000     " Lots and lots of undo
set history=50          " Size of :command history

set number " show line Num.
syntax enable
syntax on
set ts=4
set expandtab " tab -> [space][space][space][space]
set shiftwidth=4
set smarttab
set autoindent " do not use cindent

set cursorline " for beauty

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1,utf-16
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030


" make TAB and shift+TAB work in command mode
nmap <tab> V>       
nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv

" can copy more lines across files
set viminfo='20,<3000

