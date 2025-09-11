// If health is depeleted no need for additional logic
if (health_ <= 0) {
	exit;
}

if (hurtbox_entity_can_be_hit_by(other)) {
	// Prevent multi-hits
	invincible_ = true;
	alarm[0] = global.one_second * 0.5; // cooldown timer for invincibility after hit
	
	// Elsewise, peform damage calculations
	health_ -= other.damage_; // "other" is the object we collided with, in this case the o_hitbox
	state_ = enemy.hit;

	var _knockback_direction = point_direction(other.x, other.y, x, y)
	
	// Playing the "hit" visual effect
	create_animation_effect(s_hit_effect, x, y-8, 1, true);
	
	set_movement(_knockback_direction, other.knockback_);
}