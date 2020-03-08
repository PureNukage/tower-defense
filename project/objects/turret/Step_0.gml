switch(states)
{	
	case states.placed:
		if canShoot {
			//	I already have a target
			if target > -1 {
				var Arrow = instance_create_layer(x,y,"Instances",arrow)
				Arrow.image_angle = point_direction(x,y,target.x,target.y)
			} 
			//	I do not have a target
			else {
				with enemy {
					var cells = 6
					var range = cells * controller.cell_width
					if point_distance(x,y,other.x,other.y) <= range {
						other.target = id
					}
					
					
				}
				
			}
			
			
		}
		
		
	break
	
}