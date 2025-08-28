// If health is depeleted no need for additional logic
if (health_ <= 0) {
	exit;
}

// Elsewise, peform damage calculations
health_ -= other.damage_; // "other" is the object we collided with, in this case the o_hitbox
state_ = enemy.hit;

var _knockback_direction = point_direction(other.x, other.y, x, y)
set_movement(_knockback_direction, other.knockback_);