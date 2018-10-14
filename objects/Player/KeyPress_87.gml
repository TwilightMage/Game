/// @description Climb
/*if (obstacle_bottom)
{
	speed_y -= 10;
}*/
if (can_control && obstacle_bottom)
{
	if (side)
	{
		if (tile_collide_at_points(global.tileset_id, [bbox_right + 1, bbox_bottom]))
		{
			if (!tile_collide_at_points(global.tileset_id, [bbox_right + 1, bbox_top]))
			{
				climb_height = false;
				can_control = false;
				alarm_set(0, 10);
			}
			else if (!tile_collide_at_points(global.tileset_id, [bbox_right + 1, bbox_top - 32]))
			{
				climb_height = true;
				can_control = false;
				alarm_set(0, 20);
			}
		}
	}
	else
	{
		if (tile_collide_at_points(global.tileset_id, [bbox_left - 1, bbox_bottom]))
		{
			if (!tile_collide_at_points(global.tileset_id, [bbox_left - 1, bbox_top]))
			{
				climb_height = false;
				can_control = false;
				alarm_set(0, 10);
			}
			else if (!tile_collide_at_points(global.tileset_id, [bbox_left - 1, bbox_top - 32]))
			{
				climb_height = true;
				can_control = false;
				alarm_set(0, 20);
			}
		}	
	}
}