function is_in_destroyed_list(){
	///@arg instance_id
	var _id = argument0;
	return array_find_the_index(instance_key(_id), global.destroyed) != -1;
}