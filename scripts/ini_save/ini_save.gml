function ini_save(){
	///@arg file name
	var _file_name = argument0;
	
	// Make sure we override the previous safe file rather than append to it
	if (file_exists(_file_name)) {
		file_delete(_file_name);
	}
	ini_open(_file_name);
	
	// Saving the starting Room and starting position
	ini_write_string("Level", "Room", room_get_name(room));
	ini_write_real("Level", "Start x", global.player_start_position.x);
	ini_write_real("Level", "Start y", global.player_start_position.y);
	
	// Saving player health and stamina stats
	ini_write_real("Player", "Max Health", global.player_max_health);
	ini_write_real("Player", "Health", global.player_health);
	ini_write_real("Player", "Max Stamina", global.player_max_stamina);
	ini_write_real("Player", "Stamina", global.player_stamina);
	
	// Saving inventory
	ini_write_inventory("Player", "Inventory", global.inventory);

	// Saving active items i.e. equipment
	ini_write_inventory("Player", "Equipment", global.item);
	
	// Saving the state of the desctructable objects
	ini_write_string_array("World", "Destroyed Objects", global.destroyed);
	
	ini_close();
}