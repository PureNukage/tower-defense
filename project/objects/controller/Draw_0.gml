var xx = 0
var yy = 0
for(var w=0;w<grid_width;w++) {
	for(var h=0;h<grid_height;h++) {
		draw_set_color(c_purple)
		draw_rectangle(xx,yy,xx+cell_width,yy+cell_height,true)
		
		if point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+cell_width,yy+cell_height) {
			mouseX = w
			mouseY = h
		}
		
		yy += cell_height
	}
	xx += cell_width
	yy = 0
}

draw_text(15,15,string(mouseX))
draw_text(15,30,string(mouseY))