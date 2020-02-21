/*
	Loop and draw the names of all the Smartcontract.com team members
	
	use point_in_rectangle() to have a collision with the mouse and change the color of the text
	
	CHALLENGE: make it so if you press the name it will stay highlighted when not moused over
																						*/

team_members = []
team_members[0,0] = "Sergey Nazarov"
team_members[0,1] = false
team_members[1,0] = "Steve Ellis"
team_members[1,1] = false
team_members[2,0] = "Adelyn Zhou"
team_members[2,1] = false
team_members[3,0] = "Rory Piant"
team_members[3,1] = false
team_members[4,0] = "Jonny Huxtable"
team_members[4,1] = false

/*
	Loop and draw the sprites contained in this array
	
	CHALLENGE: use draw_sprite_ext() to give the ChainLink sprite a cyan hue (and ONLY the ChainLink)
																						*/

crypto_that_actually_matters = []
crypto_that_actually_matters[0] = s_bitcoin
crypto_that_actually_matters[1] = s_ethereum
crypto_that_actually_matters[2] = s_chainlink