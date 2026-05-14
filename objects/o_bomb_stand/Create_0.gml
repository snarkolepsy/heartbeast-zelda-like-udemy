event_inherited();
image_speed = 0;
image_index = 1; // Bomb is inside the indent of the pedestal
depth = -bbox_bottom;

if (is_in_destroyed_list(id)) { // Don't draw the bomb if it has already been acquired
	image_index = 0;
	activatable_ = false;
}