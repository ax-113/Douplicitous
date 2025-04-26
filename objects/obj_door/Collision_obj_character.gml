var r;
if n_door == "bath"{r = rm_bathroom}
if n_door == "kitc"{r = rm_kitchen}
if n_door == "bed"{r = rm_bedroom}
if n_door == "hall"{r = rm_hallway}
global.future_x = future_x;
global.future_y = future_y;
global.should_spawn_player = true;
TransitionStart(r,sq_fade1,sq_fade2);