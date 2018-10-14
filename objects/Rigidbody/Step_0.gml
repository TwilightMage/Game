/// @description Update
speed_y += (9.81 / 10) * mass;

obstacle_right = tile_collide_at_points(global.tileset_id, [bbox_right + 1, bbox_top], [bbox_right + 1, bbox_bottom]);
obstacle_left = tile_collide_at_points(global.tileset_id, [bbox_left - 1, bbox_top], [bbox_left - 1, bbox_bottom-1]);
obstacle_bottom = tile_collide_at_points(global.tileset_id, [bbox_left, bbox_bottom + 1], [bbox_right, bbox_bottom + 1]);
obstacle_top = tile_collide_at_points(global.tileset_id, [bbox_left, bbox_top - 1], [bbox_right, bbox_top - 1]);

if (obstacle_top && speed_y < 0) speed_y = 0;
if (obstacle_bottom && speed_y > 0) speed_y = 0;
if (obstacle_left && speed_x < 0) speed_x = 0;
if (obstacle_right && speed_x > 0) speed_x = 0;

move([speed_x, speed_y]);