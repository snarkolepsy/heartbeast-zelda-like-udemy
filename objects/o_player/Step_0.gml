if (keyboard_check(vk_right) && !place_meeting(x+4, y, o_solid)) {
	x += 2; // moving character to the right at a rate of 4 pixels per step
	sprite_index = s_player_run_right;
	image_speed = 0.6;
	image_xscale = 1;
}

// Leftward movement
if (keyboard_check(vk_left) && !place_meeting(x-4, y, o_solid)) {
	x -= 2;
	sprite_index = s_player_run_right;
	image_speed = 0.6;
	image_xscale = -1;
}

// Upward movement
if (keyboard_check(vk_up) && !place_meeting(x, y-4, o_solid)) {
	y -= 2;
	sprite_index = s_player_run_up;
	image_speed = 0.6;
}

// Downward movement
if (keyboard_check(vk_down) && !place_meeting(x, y+4, o_solid)) {
	y += 2;
	sprite_index = s_player_run_down;
	image_speed = 0.6;
}