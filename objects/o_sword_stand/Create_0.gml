event_inherited();
image_speed = 0;
image_index = 1; // Sword starts off with IN the stand
depth = -bbox_bottom;

if (is_in_destroyed_list(id)) { // Do not draw the sword if it's already taken
	image_index = 0;
	activatable_ = false;
}