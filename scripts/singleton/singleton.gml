function singleton(){
	///@arg object
	var _object = argument0;
	
	if (instance_exists(_object)) {
		return _object.id;
	}
	else {
		var _instance = instance_create_layer(0, 0, "Instances", _object); // If it doesn't exist, create it
		_instance.persistent = true;
		return _instance;
	}
}