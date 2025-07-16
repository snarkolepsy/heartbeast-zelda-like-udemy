/// @description Sword State

image_speed = 0.8;

// Finish the animation before changing back to default state
if (animation_hit_frame(3)) {
	state_ = player.move;
}