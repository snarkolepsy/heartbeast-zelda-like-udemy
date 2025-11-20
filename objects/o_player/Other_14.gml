/// @description Bow State
speed_ = 0;
var _bow_speed = 0.5;
image_speed = _bow_speed; // without this we will not animate drawing and loosing
if (animation_hit_frame(3)) {
	image_speed = 0;
	var _released = false;
	if (action_ == action.one) {
		_released = !o_input.action_one_;
	}
	else {
		_released = !o_input.action_two_;
	}
	
	if(_released) {
		image_speed = _bow_speed;
		audio_play_sound(a_swipe, 2, false);
		// create the arrow on frame 3 and send it flying
		var _arrow = instance_create_layer(x, y, "Collision", o_arrow);
	
		_arrow.direction = direction_facing_ * 90;
		_arrow.image_angle = direction_facing_ * 90;
		_arrow.speed = 4; // will spawn and never move if we don't include this line
	
		// Adjust the starting position so it doesn't start on top of the player and auto de-spawn 
		switch (direction_facing_) {
			case dir.right:
				_arrow.x += 13;
				_arrow.y -= 6; // we shoot a bit low, even with the drawing offset
				break;
			case dir.up:
				_arrow.y -= 15; // any lower we might collide with the player
				break;
			case dir.left:
				_arrow.x -= 13;
				_arrow.y -= 6; 
				break;
			case dir.down:
				_arrow.y += 8; // Looks "right" at offset of 8
				break;
			default:
				break;
		}
	}
}
if (animation_hit_frame(image_number-1)) { // on the last frame
	state_ = player.move;
	image_index = 0;	
}