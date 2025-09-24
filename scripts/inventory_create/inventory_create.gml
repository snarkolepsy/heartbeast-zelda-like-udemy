function inventory_create(){
	///@arg size
	var _size = argument0;
	
	// Make an empty array in which to store the inventory items
	global.inventory = [];

	var _i = 0;
	repeat (_size) {
		global.inventory[_i] = noone;
		_i++;
	}

}