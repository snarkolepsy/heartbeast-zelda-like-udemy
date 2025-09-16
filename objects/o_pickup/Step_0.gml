z_ += z_speed_;
z_speed_+= gravity_;

// If the object hits the ground
if (z_ >= 0) {
	can_pickup_ = true; // now we can pick it up
	var _bounce_amount = 0.25;
	z_speed_ = -z_speed_ * _bounce_amount; // make the item "bounce"
	
	if (z_speed_ > -1) { // Eventually stop bouncing
		z_speed_ = 0;
		z_ = 0;
	}
}