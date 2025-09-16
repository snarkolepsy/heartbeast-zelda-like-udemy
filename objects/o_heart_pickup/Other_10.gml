// Delete the object and play the "item get" sound effect
instance_destroy();

global.player_health += 1; // restore health
if (global.player_health > global.player_max_health) { // Make sure we don't exceed
	global.player_health = global.player_max_health;
}

audio_play_sound(a_collect_item, 2, false);