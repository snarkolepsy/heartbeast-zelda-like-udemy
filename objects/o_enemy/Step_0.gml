depth = -y;

// Die when our health drops to or below zero
if (health_ <= 0 && state_ != enemy.hit) {
	instance_destroy();
}

// Execute the state
if (state_ != noone) {
	event_user(state_);
}