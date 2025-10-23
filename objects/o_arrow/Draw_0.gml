// Draw the arrow's shadow
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_black, 0.4);
// Draw with a slight visual offset to compensate for where it's being shot from
draw_sprite_ext(sprite_index, image_index, x, y-7, image_xscale, image_yscale, image_angle, image_blend, image_alpha);