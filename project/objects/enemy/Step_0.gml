if instance_position(x,y,arrow) {
	hp--
}

if hp <= 0 {
	states = states.dead
}

if states == states.dead {
	image_alpha -= 0.01
	
	if image_alpha == 0 {
		controller.grid[# cell_x, cell_y] = -1
		instance_destroy()
	}
}