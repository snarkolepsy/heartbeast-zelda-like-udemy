function set_sprite_facing(){
	// Making the enemy face the right direction of travel
	var _x_speed = lengthdir_x(speed_, direction_);
	if (_x_speed != 0) {
		image_xscale = sign(_x_speed); // Flips the sprite if we're moving in a negative x direction
	}
}