" Disable print key and new tab key
if has ("gui_macvim")
	macmenu &File.Print key=<nop>
	macmenu &File.New\ Tab key=<nop>
endif

