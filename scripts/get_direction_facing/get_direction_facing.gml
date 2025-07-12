function get_direction_facing(){
	///@arg direction
	
	// For better readability
	var _direction = argument0;
	
	// Set the instance variable to determine FACING
	direction_facing_ = round(_direction/90); // Converting a calculated direction into the ENUM
	// Loop back to the first element of the ENUM!
	if (direction_facing_ == 4) {
		direction_facing_ = 0;
	}
}