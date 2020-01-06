set nocompatible
set showtabline=0
if (has('nvim'))
  let g:CtrlSpaceDefaultMappingKey = "<C-space> "
else
  let g:CtrlSpaceDefaultMappingKey = "<NUL> "
endif

if executable("ag")
  let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

