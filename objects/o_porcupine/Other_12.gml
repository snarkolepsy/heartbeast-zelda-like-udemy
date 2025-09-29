/// @description Move State

// Animate the walk
image_speed = 0.35;

set_sprite_facing();

// If alarm goes off on during movement state, start slowing down
if (alarm[1] <= 0) {
	apply_friction_to_movement_entity();
}
else {
	add_movement_maxspeed(direction_, 0.05, 0.5); // acceleration and max speed
}

move_movement_entity(true); // Should bounce off the walls

if (speed_ == 0) {
	alarm[1] = random_range(1, 3) * global.one_second; 
	state_ = porcupine.idle;
}

porcupine_attack();