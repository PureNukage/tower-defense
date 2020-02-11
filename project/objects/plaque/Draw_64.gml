if (live_call()) return live_result

if demon.selected {
	var window_width = 600
	var window_height = 400
	var windowX = display_get_gui_width()/2 - window_width/2
	var windowY = display_get_gui_height() - window_height
	var spacer = 8

	//	window
	var outline = 4
	draw_set_color(c_black)
	draw_rectangle(windowX-outline,windowY-outline,windowX+window_width+outline,windowY+window_height+outline,false)

	draw_set_color(c_dkgray)
	draw_rectangle(windowX,windowY,windowX+window_width,windowY+window_height,false)

	//	portrait
	var portrait_width = sprite_get_width(demon.portrait)
	var portrait_height = sprite_get_height(demon.portrait)
	var portraitX = windowX + spacer*2
	var portraitY = windowY + spacer*2

	draw_sprite(demon.portrait,0,portraitX,portraitY)

	//	name
	draw_set_font(fnt_plaque_name)
	var name_width = string_width(demon.name) + spacer*2
	var name_height = string_height(demon.name) + spacer*2
	var nameX = portraitX + portrait_width + spacer*2
	var nameY = portraitY

	draw_set_color(c_white)
	draw_roundrect(nameX,nameY,nameX+name_width,nameY+name_height,false)

	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(nameX+name_width/2,nameY+name_height/2,demon.name)

	//	level
	var levelX = windowX+window_width - spacer*3 - string_width(string(demon.level))
	var levelY = nameY
	draw_set_halign(fa_right)
	draw_set_valign(fa_top)
	draw_text(levelX,levelY,string(demon.level))
}