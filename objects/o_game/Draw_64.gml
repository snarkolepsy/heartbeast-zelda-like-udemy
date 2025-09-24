var _gui_width = display_get_gui_width();
var _gui_height  = display_get_gui_height();

// Draw the  snapshotted scene when game is paused
if (sprite_exists(paused_sprite_)) {
	draw_sprite_ext(paused_sprite_, 0, 0, 0, paused_sprite_scale_, paused_sprite_scale_, 0, c_white, 1);
	// Dark transparent overlay
	draw_set_alpha(0.6);
	draw_rectangle_color(0, 0, _gui_width, _gui_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

// Drawing the dynamic HUD effect for the health bar
var _hud_right_edge = 3+global.player_max_health*15;
draw_sprite_ext(s_hud, 0, 0, _gui_height, _hud_right_edge, 1, 0, c_white, 1);
draw_sprite(s_hud_edge, 0, _hud_right_edge, _gui_height);

// Display the player health i.e. hearts
for (var _i = 0; _i < global.player_max_health; _i++) {
	// Differentiate between filled and empty hearts
	var _filled = _i < global.player_health;
	draw_sprite(s_heart_ui, _filled, 4+15*_i, _gui_height-29);
}

// Display how many gems have we collected
var _gem_string = string(global.player_gems);
var _text_width = string_width(_gem_string);
var _x = _gui_width - _text_width+4;
var _y = _gui_height - 16 + 4;
draw_sprite(s_gem, 0, _x-16, _y+7);
draw_text(_x-8, _y-1, _gem_string);

// Drawing the inventory
inventory_draw(4, 36);