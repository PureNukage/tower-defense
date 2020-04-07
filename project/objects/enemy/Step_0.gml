if damaged damaged = false

if instance_position(x,y,arrow) {
	var Arrow = instance_position(x,y,arrow)
	instance_destroy(Arrow)
	hp--
	damaged = true
}

if hp <= 0 {
	states = states.dead
}

if states == states.dead {
	image_alpha -= 0.01
	
	if image_alpha == 0 {
		instance_destroy()
	}
}