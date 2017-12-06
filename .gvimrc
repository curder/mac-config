"禁用macvim的打印键
if has("gui_macvim")
	macmenu &File.Print key=<nop>
endif

"如果可以，使用更美观的符号
if has("gui_macvim")
	set macligatures
endif
