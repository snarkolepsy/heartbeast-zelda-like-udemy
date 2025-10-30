function snake_attack(){
	if (not instance_exists(o_player)) exit;
	
	// only do this if there is a player object
	var _distance_to_player = point_distance(x, y, o_player.x, o_player.y);
	if (_distance_to_player < 16) { // activate when within fewer than 16 pixels
		state_ = snake.attack;
		image_index = 0; // reset to the first frame of the animation
		sprite_index = s_snake_attack;
	}
}