/// @description Debug
if (side) draw_rectangle_color(bbox_right - 4, bbox_top, bbox_right, bbox_bottom - 32, c_green, c_green, c_green, c_green, 0);
else draw_rectangle_color(bbox_left, bbox_top, bbox_left + 4, bbox_bottom - 32, c_green, c_green, c_green, c_green, 0);
if (alarm_get(0) > 0) draw_rectangle_color(bbox_left + 5, bbox_top, bbox_right - 5, bbox_bottom - 32, c_purple, c_purple, c_purple, c_purple, 0);