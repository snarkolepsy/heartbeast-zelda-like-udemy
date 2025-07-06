if (keyboard_check(vk_right)) {
	x += 4; // moving character to the right at a rate of 4 pixels per step
}

// Leftward movement
if (keyboard_check(vk_left)) {
	x -= 4;
}

// Upward movement
if (keyboard_check(vk_up)) {
	y -= 4;
}

// Downward movement
if (keyboard_check(vk_down)) {
	y += 4;
}