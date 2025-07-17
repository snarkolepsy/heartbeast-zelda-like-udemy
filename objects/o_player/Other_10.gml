/// @description Move State

image_speed = 0;

// Axis controls
var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left); // range 1 to -1
var _y_input = keyboard_check(vk_down) - keyboard_check(vk_up);
// Takes two points and returns a direction in a 360 wheel
var _input_direction = point_direction(0, 0, _x_input, _y_input);
// SPACEBAR to attack
var _attack_input = keyboard_check_pressed(ord("X"));
// Z to roll
var _roll_input = keyboard_check_pressed(ord("Z"));

roll_direction_ = direction_facing_*90;

// Check if we are not moving
if (_x_input == 0 && _y_input == 0) {
	// Reset to the first frame of the animation 
	image_index = 0;
	// Do not animate
	image_speed = 0;
	apply_friction_to_movement_entity(); // Slow character to a stop
}
else { // we are moving
	image_speed = 0.6; // actually animate the sprite
	
	// flip the sprite if we're moving left
	if (_x_input != 0) {
		image_xscale = _x_input; // set to -1 or 1
	}
	
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
	
	roll_direction_ = direction_facing_*90;
}

// Switching to attacking "mode" when the proper key is pressed
if (_attack_input == true) {
	image_index = 0;
	state_ = player.sword;
}

// Are we rolling?
if (_roll_input == true) {
	image_index = 0;
	state_ = player.evade;
}

// ACTUALLY MOVES! Bounce or not?
move_movement_entity(false);