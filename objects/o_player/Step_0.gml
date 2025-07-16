event_user(state_); // enum player.move is 0, player.sword is 1, etc.

// Update the sprite with lookup table based on action and facing
sprite_index = sprite_[state_, direction_facing_];