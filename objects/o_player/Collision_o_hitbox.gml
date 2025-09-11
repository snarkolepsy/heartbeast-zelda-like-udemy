/// @description Hit Logic
if (hurtbox_entity_can_be_hit_by(other)) {
	
	// Some invincibility frames after the first hit is triggered
	invincible_ = true;
	alarm[0] = global.one_second * 0.75; // Reduce the flashing invicible time
	
	// Dealing damage to current health
	global.player_health -= other.damage_;
	
	// Applying knockback
	var _knockback_direction = point_direction(other.x, other.y, x, y);
	set_movement(_knockback_direction, other.knockback_);
	
	// Change the state
	state_ = player.hit;
}