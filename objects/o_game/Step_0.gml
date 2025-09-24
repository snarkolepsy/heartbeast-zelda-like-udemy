if (paused_) {
	var _array_size = array_length(global.inventory);
	if (o_input.right_pressed_) {
		item_index_ = min(item_index_+1, _array_size-1); // prevents from going past rightmost
		audio_play_sound(a_menu_move, 1, false);
	}
	if (o_input.left_pressed_) {
		item_index_ = max(item_index_-1, 0); // prevents from going past leftmost
		audio_play_sound(a_menu_move, 1, false);
	}
	
	// Setting equipped items
	if (o_input.action_one_pressed_) {
		global.item[0] = global.inventory[item_index_];
		audio_play_sound(a_menu_select, 3, false);
	}
	if (o_input.action_two_pressed_) {
		global.item[1] = global.inventory[item_index_];
		audio_play_sound(a_menu_select, 3, false);
	}
}

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
		
		// REACTIVATE STUFF YOU NEED IN THE PAUSE MENU
		// Starting with the inventory items
		var _array_size = array_length(global.inventory);
		for (var _i = 0; _i < _array_size; _i++) {
			instance_activate_object(global.inventory[_i]);
		}
		// want to be able to still track input
		instance_activate_object(o_input); 

		audio_play_sound(a_pause, 5, false);
	}
}