// When destroyed, potentially spawn a pickup item
if (chance(0.1)) {
	var _item = choose(o_gem_pickup, o_heart_pickup);
	instance_create_layer(x, y+8, "Instances", _item); // spawn the item on successful drop
}