function add_to_destroyed_list(){
	///@arg instance_id
	var _id = argument0;
	global.destroyed[array_length(global.destroyed)] = instance_key(_id);
}