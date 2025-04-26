// Safe guards
var ff = frames(D);
var ss = spr(state);

// Very important: check for undefined
if (is_undefined(ff)) {
    ff = [0, 3];
}
if (is_undefined(ss)) {
    ss = spr_player_neutral;
}

// Apply animation
sprite_index = ss;
image_index = bound(image_index, ff);
draw_self();
