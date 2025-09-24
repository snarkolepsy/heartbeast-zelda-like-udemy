function array_find_the_index(){
	///@arg value to look for
	///@arg array to look inside
	
	var _value = argument0;
	var _array = argument1;
	
	var _array_size = array_length(_array);
	// Look for the value, return -1 otherwise
	for (var _i = 0; _i < _array_size; _i++) {
		if (_value == _array[_i]) {
			return _i;
		}
	}
	
	return -1; // Unable to find a valid index
}