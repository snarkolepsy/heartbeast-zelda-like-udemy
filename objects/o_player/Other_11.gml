/// @description Sword State

image_speed = 0.8;

// Create hitboxes at the appropriate frame of the animation
if (animation_hit_frame(1)) {
	// Making stuff a bit easier to read and parse
	var _angle = direction_facing_*90;
	var _life = 3; // Lasts three frames i.e. the rest of the sword attack animation
	var _damage = 1;
	var _knockback = 8;
	
	// debugging: draw the hitbox? The following does not work
	draw_sprite_ext(s_snake_move, 0, x, y, 1, 1, _angle, c_red, 1);
	
	var _hitbox = create_hitbox(s_sword_hitbox, x, y, _angle, _life, [o_enemy, o_grass, o_bush], _damage, _knockback);
	
	// Play the sound effect
	audio_play_sound(a_swipe, 8, false);	
	
	// Apply offset to sword sprite spawn location depending on direction faced
	switch direction_facing_ {
		case dir.right:
			_hitbox.x += 2;
 			_hitbox.y -=8;
			break;
		case dir.up:
		 	_hitbox.y -=5;
			break;
		case dir.left:
			_hitbox.x -= 3;
		 	_hitbox.y -= 8;
			break;
		case dir.down:
		 	_hitbox.y -= 6;
			break;
	}
}

// Finish the animation before changing back to default state
if (animation_hit_frame(image_number-1)) {
	state_ = player.move;
}