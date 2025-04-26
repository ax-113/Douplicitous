#region movement
var capa = layer_tilemap_get_id(layer_get_id("Tiles_2"))
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var left = keyboard_check(ord("A"));

var hsp = (right - left);
var vsp = (down - up);

if place_meeting(x+hsp,y,[capa]) {
	while !place_meeting(x+sign(hsp),y,[capa]) {
	    x +=sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;
if place_meeting(x,y+vsp,[capa]) {
	    while !place_meeting(x,y+sign(vsp),[capa]) {
	        y +=sign(vsp);
	    }
	    vsp = 0;
}
y = y + vsp;
#endregion
#region sprites
if obj_controler.MH >= 80{
	state = "H";
}else if obj_controler.MH <= 40{
	state = "S";
}else{
	state = "N";
}
if vsp < 0{
	D = "up"
}else if vsp > 0{
	D = "down"
}
if hsp < 0{
	D = "left"
}else if hsp > 0{
	D = "right"
}

if (hsp == 0 && vsp == 0) {
    D = "idle";
}
#endregion
