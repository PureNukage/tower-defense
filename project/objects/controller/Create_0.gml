cell_width = 64
cell_height = 64

grid_width = room_width/cell_width
grid_height = room_height/cell_height

grid = ds_grid_create(grid_width,grid_height)
ds_grid_set_region(grid,0,0,grid_width-1,grid_height-1,-1)

cell_positionsX = []
cell_positionsY = []
var xx = 0
var yy = 0
for(var w=0;w<grid_width;w++) {
	for(var h=0;h<grid_height;h++) {
		cell_positionsX[w] = xx
		cell_positionsY[h] = yy
		
		yy += cell_height
	}
	xx += cell_width
	yy = 0
}

mouseX = -1
mouseY = -1

total_turrets = 5