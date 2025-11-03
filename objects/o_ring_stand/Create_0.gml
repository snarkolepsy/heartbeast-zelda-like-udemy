event_inherited();
image_speed = 0;
image_index = 1; // Ring is on the pedestal
depth = -bbox_bottom;

if (is_in_destroyed_list(id)) { // Do not draw the ring anymore if it's already taken
	image_index = 0;
	activatable_ = false;
}