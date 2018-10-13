" Symbol at the begining of line when its broken
if has("linebreak")
  let &sbr = nr2char(8618).' '  " Show ↪ at the beginning of wrapped lines
endif
