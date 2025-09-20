function inventory_create(){
	///@arg size
	var _size = argument0;
	
	// Make an array to store the inventory items
	global.inventory = [];
	for (var _i = 0; _i < _size; _i++) { 
		global.inventory[_i] = noone;
	}
}