switch(states)
{	
	case states.placed:
		if canShoot {
			//	I already have a target
			if target > -1 {
				if target.states == states.alive {
					if cooldown == 0 {
						var Arrow = instance_create_layer(x,y,"Instances",arrow)
						Arrow.image_angle = point_direction(x,y,target.x,target.y)
						Arrow.speed = 15
						Arrow.direction = point_direction(x,y,target.x,target.y)
						cooldown = cooldown_max
					} else cooldown--
				} else {
					target = -1
				}
			} 
			//	I do not have a target
			else {
				with enemy {
					var cells = 6
					var range = cells * controller.cell_width
					if point_distance(x,y,other.x,other.y) <= range and states == states.alive {
						other.target = id
					}
				}
			}
		}
		
		
	break
	
}