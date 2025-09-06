if (hurtbox_entity_can_be_hit_by(other)) {
	instance_destroy();
	
	// When the grass is destroyed there should be a visual effect
	create_animation_effect(s_grass_effect, x, y, random_range(0.4, 0.8), true);
}