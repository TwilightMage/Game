/// @description Update
event_inherited();

moving = 0;
if (go_left) moving--;
if (go_right) moving++;


//if (obstacle_bottom)
speed_x = global.player_speed * moving;