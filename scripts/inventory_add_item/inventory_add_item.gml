function inventory_add_item(){
	///@arg item
	
	var _item = argument0;
	
	// Make sure we don't already have this item
	var _item_index =  array_find_index(global.inventory, _item); // number 0 to n if true; -1 if false
	if (_item_index == -1) {
		var _array_size = array_length(global.inventory);
		
		// Find the empty space and put the item there
		for (var _i = 0; _i < _array_size, _i++) {
			 if (global.inventory[_i] = noone) {
				 global.inventory[_i] = _item;
				 return true;
			 }
		}
	}
	else {
		return true;
	}
	
	return false;
}