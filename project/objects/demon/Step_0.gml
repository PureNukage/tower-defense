var buffer = 8
if point_in_rectangle(mouse_x,mouse_y,x-buffer,y-buffer,x+sprite_get_width(sprite_index)+buffer,y+sprite_get_height(sprite_index)+buffer) {
	if mouse_check_button_pressed(mb_left) {
		selected = !selected	
	}
}