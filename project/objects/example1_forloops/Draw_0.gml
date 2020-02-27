if live_call() return live_result

var xx = display_get_gui_width()/2
var yy = display_get_gui_height()/2

//	Dot at center of the screen
//draw_set_color(c_green)
//draw_circle(xx,yy,32,false)

var amount = array_length_1d(best_artists)
for(var i=0;i<amount;i++) {
	var artist = best_artists[i]
	draw_set_color(c_black)
	draw_text(xx,yy,artist)
	yy += 32
}