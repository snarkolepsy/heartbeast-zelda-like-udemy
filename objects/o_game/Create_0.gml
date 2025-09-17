global.one_second = game_get_speed(gamespeed_fps);
instance_create_layer(0, 0, "Instances", o_input);

// Converting a sprite sheet into a usable font
var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(s_font, _font_string, true, 1);
draw_set_font(global.font);

// Defining and setting player HP, SP, etc. in this persistent object
global.player_max_health = 4;
global.player_health = global.player_max_health;
global.player_max_stamina = 2;
global.player_stamina = global.player_max_stamina;
global.player_gems = 0; // will be used for scorekeeping later
global.player_start_position = i_game_start;

// Play background music
// audio_play_sound(a_music, 10, true);

// Setting the correct GUI Resolution to match our camera
display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));