// Delete the object and play the "item get" sound effect
instance_destroy();
global.player_gems += 1; // Increment the global counter
audio_play_sound(a_collect_item, 2, false);