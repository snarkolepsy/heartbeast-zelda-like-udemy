/// @description Hit Logic
image_index = 0;
move_movement_entity(true);
apply_friction_to_movement_entity();

// leaving the hit state once we've stopped "reeling from the hit"
if (speed_ == 0) {
	state_ = starting_state_;
}