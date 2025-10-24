global.one_second = game_get_speed(gamespeed_fps);
global.destroyed = [];
instance_create_layer(0, 0, "Instances", o_input);

// Converting a sprite sheet into a usable font
var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(s_font, _font_string, true, 1);
draw_set_font(global.font);

// Defining and setting player HP, SP, etc. in this persistent object
global.player_max_health = 4;
global.player_health = global.player_max_health;
global.player_max_stamina = 3;
global.player_stamina = global.player_max_stamina;
global.player_gems = 0; // will be used for scorekeeping later
global.player_start_position = i_game_start;

global.start_x = noone;
global.start_y = noone;
global.load = false;

// Play background music
// audio_play_sound(a_music, 10, true);

// Setting the correct GUI Resolution to match our camera
display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

// Variables for implementing PAUSE state
paused_ = false;
paused_sprite_ = noone;
paused_sprite_scale_ = display_get_gui_width()/view_wport[0];

// Inventory tracking stuff p1
global.item[0] = noone;
global.item[1] = noone;
item_index_ = 0;

// Inventory tracking stuff p2
inventory_create(6);
inventory_add_item(o_ring_item); // We start off with the ring?
inventory_add_item(o_bow_item); // for debugging purposes, we also start with the bow and bombs
inventory_add_item(o_bomb_item);