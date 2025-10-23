// Ignoring OP's edge case; exception for depth
if (image_angle == 0 or image_angle = 180) {
	if (y < other.bbox_top+5) {
		exit;
	}
}

// Collide with o_solid, spawn o_arrow_hit object
var _arrow_hit = instance_create_layer(x, y-7, "Instances", o_arrow_hit);
_arrow_hit.image_angle = image_angle;
with (_arrow_hit) {
	var _x_dir = sign(lengthdir_x(1, image_angle));
	var _y_dir = sign(lengthdir_y(1, image_angle));
	while (!place_meeting(x+_x_dir, y+_y_dir, o_solid)) {
		x += _x_dir;
		y += _y_dir;
	}
	x +=_x_dir; // can we make this a do-until clause?
	y +=_y_dir;
}

instance_destroy();