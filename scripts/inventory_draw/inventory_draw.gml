function inventory_draw(){
	///@arg x
	///@arg y
	
	// Only draw them when the game is PAUSED
	if (not o_game.paused_) {
		exit;
	}
	
	var _x = argument0;
	var _y = argument1;
	
	// Going through the entire inventory
	var _array_size = array_length(global.inventory);
	for (var _i = 0; _i < _array_size; _i++) {
		// Drawing the empty boxes first
		var _box_x = _x + _i*32;
		var _box_y = _y;
		draw_sprite(s_inventory_box, 0, _box_x, _box_y);
		
		// Draw the items, if they exist
		var _item = global.inventory[_i];
		if (instance_exists(_item)) {
			draw_sprite(_item.sprite_, 0, _box_x+16, _box_y+16);
			
			// Display the amount of an item
			if (_item.show_amount_ == true) {
				draw_text(_box_x+20, _box_y+4, _item.amount_);
			}
		}	
		
		// Overlay the cursor over the current object
		if (_i == item_index_) {
			draw_sprite(s_pause_cursor, image_index/8, _box_x, _box_y);
			
			if (instance_exists(_item)) {
				draw_text(_x+4, _y+36, _item.description_);
				var _description_height = string_height(_item.description_);
				draw_text(_x+4, _y+48+_description_height, "Stamina Cost: " + string(_item.cost_));
			}
		}
	}
	
	// Drawing the equipment above the item selection row
	draw_sprite(s_inventory_box, 0, 4, 4);
	draw_sprite(s_inventory_box, 0, 36, 4);
	// Draw the items in them
	if (instance_exists(global.item[0])) {
		var _item = global.item[0];
		var _box_x = 4;
		var _box_y = 4;
		draw_sprite(_item.sprite_, 0, _box_x+16, _box_y+16);
		// Display the amount of an item
		if (_item.show_amount_ == true) {
			draw_text(_box_x+20, _box_y+4, _item.amount_);
		}
	}
	if (instance_exists(global.item[1])) {
		var _item = global.item[0];
		var _box_x = 36;
		var _box_y = 4;
		draw_sprite(_item.sprite_, 0, _box_x+16, _box_y+16);
		// Display the amount of an item
		if (_item.show_amount_ == true) {
			draw_text(_box_x+20, _box_y+4, _item.amount_);
		}
	}
}