/// @description Sword State

image_speed = 0.8;

// Create hitboxes at the appropriate frame of the animation
if (animation_hit_frame(1)) {
	// Making stuff a bit easier to read and parse
	var _angle = direction_facing_*90;
	var _life = 3;
	var _damage = 4;
	var _knockback = 8;
	
	var _hitbox = create_hitbox(s_sword_hitbox, x, y, _angle, _life, [o_enemy, o_grass, o_bush], _damage, _knockback);
	
	// Play the sound effect
	audio_play_sound(a_swipe, 8, false);	
	
	// Apply offset to sword sprite spawn location depending on direction faced
	switch direction_facing_ {
		case dir.up: _hitbox.y -= 4; break;
		default: _hitbox.y -= 8; break; // same as dir.down
	}
}

// Finish the animation before changing back to default state
if (animation_hit_frame(image_number-1)) {
	state_ = player.move;
}