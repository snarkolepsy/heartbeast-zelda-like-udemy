// Drawing the player's shadow
draw_sprite(s_medium_shadow, 0, x, y);

// debugging: draw the collision
// draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red, c_red, c_red, c_red, false);

draw_self();
if (sprite_exists(found_item_sprite_)) {
	draw_sprite(found_item_sprite_, 0, x, y-32);
}
draw_self_flash(c_white, 12, alarm[0]);