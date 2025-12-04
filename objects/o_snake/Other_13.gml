/// @description Attack State
image_speed = 0.35;

if (animation_hit_frame(1)) {
	var _life = 1;
	var _damage = 1;
	var _knockback = 4;
	create_hitbox(s_porcupine_hitbox, x, y, 0, _life, [o_player], _damage, _knockback);
	audio_play_sound(a_snake, 5, false);
}

// Exiting the attack state back to default state
if (animation_hit_frame(image_number-1)) { // Confirm we've finished animation
	state_ = snake.idle;
	sprite_index = s_snake_move;
	alarm[1] = 2*global.one_second;
}