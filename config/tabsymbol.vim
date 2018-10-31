" tab symbol and end of line symbol
if has('multi_byte')
  if version >= 700
    set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
  else
    set listchars=tab:»\ ,trail:·,extends:>,precedes:<,nbsp:_
  endif
endif
