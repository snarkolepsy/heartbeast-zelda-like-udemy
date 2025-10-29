GET_INPUT = 0;
event_user(GET_INPUT);

// Alternative movement with WASD instead of arrow keys
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);

// Alt buttons for actions
keyboard_set_map(ord("O"), ord("Z"));
keyboard_set_map(ord("P"), ord("X"));

keyboard_set_map(ord("E"), vk_enter);
keyboard_set_map(vk_escape, vk_enter);