function is_target(){
	///@arg value
	///@arg target_array
	
	var _value = argument0;
	var _array = argument1;
	var _array_length = array_length(_array);
	
	// Loop through the target list and check if it matches
	
	for (var _index = 0; _index < _array_length; _index++;) {
		if (_value == _array[_index]) return true;
		
		// Allows us to hurt porcupines, even though we explicitly target enemy
		if (object_is_ancestor(_value, _array[_index])) return true;
	}
	
	return false;
}