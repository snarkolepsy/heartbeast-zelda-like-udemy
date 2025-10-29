/// @description Attack State

// Reverting back to the movement state
if (not instance_exists(o_player) or distance_to_object(o_player) > range_)  {
	image_speed = 0.15;
	state_ = slime.move;
	exit;
}

// Find the direction of the player and move towards it
var _direction = point_direction(x, y, o_player.x, o_player.y);
var _x_speed = lengthdir_x(speed_, _direction);
if (_x_speed != 0) {
	image_xscale = sign(_x_speed);
}
add_movement_maxspeed(_direction, 0.12, 0.25);
move_movement_entity(true);

// If we're in contact with the player, spawn a hurtbox
var _player = instance_place(x, y, o_player);
if (_player) {
	create_hitbox(sprite_index, x, y, 0, 1, [o_player], 1, 1);
}