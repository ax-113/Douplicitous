sprite_index = choose(spr_monster2,spr_monster3,spr_monster4);
coldownA = 3;
timer = 0;
H = 5

function atack_player(){
	if coldownA <= 0 {
		if obj_controler.FH > 7{
			obj_controler.FH -= 7;
		}
		if obj_controler.MH > 1{
		obj_controler.MH--;
		}
		coldownA = 3;
	}
}