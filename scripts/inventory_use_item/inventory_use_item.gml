function inventory_use_item(){
	///@arg input
	///@arg item
	///@arg action
	var _input = argument0;
	var _item = argument1;
	var _action = argument2;
	
	if (_input) {
		var _target_x = x + lengthdir_x(8, direction_facing_*90);
		var _target_y = y + lengthdir_y(8, direction_facing_*90);
		var _interactable = instance_place(_target_x, _target_y, o_interactable);
		if (_interactable and _interactable.activatable_) {
			with _interactable {
				event_user(interactable.activate);
			}
		}
		else if (instance_exists(_item) and global.player_stamina >= _item.cost_) {
			if (_item.show_amount_) {
				if (_item.amount_ > 0) {
					_item.amount_ -= 1;
				}
				else { // don't have enough to drop the bombs, do not perform the action
					exit;
				}
			}
			action_ = _action;
			state_ = _item.action_;
			global.player_stamina = max(0, global.player_stamina-_item.cost_);
			alarm[1] = global.one_second;
			image_index  = 0;
		}
	}
}