var xx = 0
var yy = 0
for(var w=0;w<grid_width;w++) {
	for(var h=0;h<grid_height;h++) {
		xx = cell_positionsX[w]
		yy = cell_positionsY[h]
		
		draw_set_color(c_purple)
		draw_rectangle(xx,yy,xx+cell_width,yy+cell_height,true)
		
		if point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+cell_width,yy+cell_height) {
			mouseX = w
			mouseY = h
			
			if grid[# w, h] > -1 {
				draw_set_color(c_red)
				draw_set_alpha(.33)
				draw_rectangle(xx,yy,xx+cell_width,yy+cell_height,false)
				draw_set_alpha(1)
			}
			
			if input.mouse_left_pressed and grid[# w, h] == -1 { 
				var X = xx + cell_width/2
				var Y = yy + cell_height/2
				var Turret = instance_create_layer(X,Y,"Instances",turret)
				Turret.cell_x = mouseX
				Turret.cell_y = mouseY
				grid[# mouseX, mouseY] = Turret
			}
			
			if input.mouse_right_pressed {
				var X = xx + cell_width/2
				var Y = yy + cell_height/2	
				var Enemy = instance_create_layer(X,Y,"Instances",enemy)
			}
		}
	}
}

draw_text(15,15,string(mouseX))
draw_text(15,30,string(mouseY))