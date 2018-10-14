/// @description OnCreate
event_inherited()
go_left = false;
go_right = false;
moving = 0;
can_control = true;
climb_height = true;	// weak - stong
side = true;			// right - left

global.tileset_id = layer_tilemap_get_id(layer_get_id("Tilemap"));
global.player_speed = 5;