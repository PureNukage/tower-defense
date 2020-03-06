////if live_call() return live_result

//var xx = display_get_gui_width()/2
//var yy = display_get_gui_height()/2

////	Dot at center of the screen
////draw_set_color(c_green)
////draw_circle(xx,yy,32,false)

//var amount = array_length_1d(best_artists)
//for(var i=0;i<amount;i++) {
//	var artist = best_artists[i]
//	draw_set_color(c_black)
//	draw_text(xx,yy,artist)
//	yy += 32
//}



if live_call() return live_result

var xx = display_get_gui_width()/2
var yy = display_get_gui_height()/2

draw_set_color(c_green)
draw_circle(xx,yy,32,false)


var amount = array_length_1d(races)
for(var i=0;i<amount;i++) {
	var race = races[i]
	var name_width = string_width(race)
	var name_height = string_height(race)
	if point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+name_width,yy+name_height)
	{draw_set_color(c_orange)
		} else {
		draw_set_color(c_black)
		}
	draw_text(xx,yy,race)
	yy += 32
}

