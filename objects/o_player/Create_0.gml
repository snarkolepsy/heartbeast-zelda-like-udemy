initalize_movement_entity(0.5, 1, o_solid);

image_speed = 0;
acceleration_ = 0.5;
max_speed_ =1.5;
direction_facing_ = dir.right;
direction_ = 0;
global.player_health = 4;

enum player {
	move
}

enum dir { // ORDER MATTERS --> how GMS organizes directions
	right, // get angle by multiply with 90 degrees --> 0
	up,	   // 1 --> 90
	left,  // 2 --> 180
	down   // 3 --> 270 i.e. down in GMS directions
}

sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;