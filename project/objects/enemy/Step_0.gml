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
	speed = 0
	
	if image_alpha == 0 {
		instance_destroy()
	}
} 
//	Alive State
else {
	
	mp_potential_step_object(ancient.x,ancient.y,movespeed,turret)
	
	if instance_position(x,y,c_playerObject) {
		var collision = instance_position(x,y,c_playerObject)
		collision.hp--
		states = states.dead
	}
	
}