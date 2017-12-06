"禁用Macvim的打印键
if has("gui_macvim")
	macmenu &File.Print key=<nop>
endif
