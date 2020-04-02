#macro gui_mouse_x display_mouse_get_x()
#macro gui_mouse_y display_mouse_get_y()

enum states {
	placement,
	placed,
	
	alive,
	dead,
}