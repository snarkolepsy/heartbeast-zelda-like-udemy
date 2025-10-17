function ini_read_inventory(){
	///@arg section
	///@arg name
	///@arg default
	
	var _section = argument0;
	var _name = argument1;
	var _default = argument2;
	
	var _array = [];
	var _i = 0;
	while (ini_key_exists(_section, _name+string(_i))) {
		var _value = ini_read_string(_section, _name+string(_i), "-4");
		var _object = asset_get_index(_value);
		if (_object == -1) {
			_object = noone;
		}
		else {
			_object = singleton(_object); // Create an actual instance of the object
		}
		_array[_i] = _object;
		_i++;
	}
	
	if (array_length(_array) > 0) {
		return _array;
	}
	else {
		return _default;
	}
}