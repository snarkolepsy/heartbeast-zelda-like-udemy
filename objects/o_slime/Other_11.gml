/// @description Move State
set_sprite_facing();
add_movement_maxspeed(direction_, 0.01, 0.1); // move very slowly
move_movement_entity(true);

// Wandering around and changing directions randomly
if (alarm[1] <= 0) {
	alarm[1] = global.one_second*random_range(6,9);
	direction_ = random(360);
}

// If the player object exists and is within aggro range, change to attack mode
if (instance_exists(o_player) and distance_to_object(o_player) <= range_) {
	state_ = slime.attack;
	image_speed = 0.25
}