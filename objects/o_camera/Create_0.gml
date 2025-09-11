target_ = o_player;

// "view_camera" is the default camera used in GameMaker
width_ = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);

scale_ = view_wport[0]/width_; // will be 4