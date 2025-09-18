if (o_input.pause_pressed_) {
	if (paused_) {
		paused_ = false;
		
		// Destroy any potential sprites to prevent memory leak
		if (sprite_exists(paused_sprite_)) {
			sprite_delete(paused_sprite_);
		}
		
		instance_activate_all(); // Re-activate all the things we've paused
		audio_play_sound(a_unpause, 5, false);
	}
	else {
		paused_ = true;
		
		 // Taka snapshot of current screen
		paused_sprite_ = sprite_create_from_surface(application_surface, 0, 0, view_wport[0], view_hport[0], false, false, 0, 0);
		
		instance_deactivate_all(true); // Deactive all objects except for o_game
		instance_activate_object(o_input); // want to be able to still track input
		
		audio_play_sound(a_pause, 5, false);
	}
}