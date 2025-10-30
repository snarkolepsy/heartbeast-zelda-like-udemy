/// @description Idle State

// Stop animating
image_index = 0;
image_speed = 0;

// Changing from Ilde to moving
if (alarm[1] <= 0) {
	alarm[1] = random_range(2, 4) * global.one_second; // reset the alarm
	state_ = snake.move;
	direction_ = random(360); // then choose a random direction
}

snake_attack();