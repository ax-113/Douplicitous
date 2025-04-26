// Defaults so nothing is undefined
state = "N";   // Neutral
D = "idle";    // No movement yet

// Sprite safety
sprite_index = spr_player_neutral;
image_index = 0;
animation_frames = [0, 3]; // Default frames for idle

// Helper: frame range by direction
function frames(d) {
    switch (d) {
        case "idle":  return [0, 3];
        case "down":  return [4, 7];
        case "right": return [8, 11];
        case "up":    return [12, 15];
        case "left":  return [16, 19];
        default:      return [0, 3]; // fallback to idle
    }
}

// Helper: sprite by mood
function spr(s) {
    switch (s) {
        case "S": return spr_player_sad;
        case "N": return spr_player_neutral;
        case "H": return spr_player_happy;
        default:  return spr_player_neutral; // fallback
    }
}

// Helper: keep image_index inside frame range
function bound(num, range) {
    if (num >= range[1] || num < range[0]) {
        return range[0];
    }
    return num;
}
