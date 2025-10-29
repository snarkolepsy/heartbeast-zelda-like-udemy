// Required for every o_enemy instance and child
event_inherited();
initialize_movement_entity(0.25, 0.75, o_solid); // friction-, bounce+

// List of potential states
enum slime {
	hit,
	move,
	attack
}

// Slime initial state and health
max_health_ = 4;
health_ = max_health_;
starting_state_ = slime.move;
state_ = starting_state_;

// Aggro range? Is this inherited or a new variable?
range_ = 16;

// Start animating
image_index = 0;
image_xscale = choose(1, -1);
image_speed = 0.15

alarm[1] = global.one_second*random_range(0, 1);