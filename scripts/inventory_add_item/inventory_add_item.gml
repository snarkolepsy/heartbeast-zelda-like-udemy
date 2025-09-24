function inventory_add_item(){
	///@arg item
	
	var _item = singleton(argument0); // Always ensure an item is a SINGLETON
	
	// Make sure we don't already have this item
	var _item_index =  array_find_the_index(_item, global.inventory); // number 0 to n if true; -1 if false
	if (_item_index == -1) { // Item does not yet exist, so create it
		var _array_size = array_length(global.inventory);
		// Find the empty space and put the item there
		for (var _i = 0; _i < _array_size; _i++) {
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