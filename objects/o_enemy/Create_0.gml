initalize_movement_entity(1, 0.5, o_solid);
initialize_hurtbox_entity();

image_speed = 0; // for testing mockup enemy using player sprite

max_health_ = 2;
health_ = max_health_;

starting_state_ = noone;
state_ = starting_state_;

enum enemy {
	hit
}