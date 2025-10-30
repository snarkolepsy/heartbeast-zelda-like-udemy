event_inherited(); // Run the code from the enemy parent class first
initialize_movement_entity(0.5, 0.5, o_solid); // Override friction values from the parent class

// Different states for the porcupine enemy
enum snake {
	hit,
	idle,
	move,
	attack,
	wait
}

starting_state_ = snake.idle;
state_ = starting_state_;

image_index = 0;
image_xscale = choose(1, -1); // Start facing in a random direction

// Between zero and 1 second
alarm[1] = random_range(0, 1) * global.one_second;