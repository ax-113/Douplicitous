switch room{
	case rm_bedroom:
		draw_sprite_stretched(spr_minimap,1,10,10,96,90);
		break;
	case rm_hallway:
		draw_sprite_stretched(spr_minimap,2,10,10,96,90);
		break;
	case rm_kitchen:
		draw_sprite_stretched(spr_minimap,3,10,10,96,90);
		break;
	case rm_bathroom:
		draw_sprite_stretched(spr_minimap,4,10,10,96,90);
		break;
}
draw_set_font(Font1);
if FH >= 0{
	draw_sprite(spr_gui_health,FH/20,10,120);
}else dead = true;
if MH >= 0{
	draw_sprite(spr_gui_mental_health,MH/20,10,200);
}else dead = true;
if dead == true{
	draw_set_color(c_red);
	draw_rectangle(0,0,10000,100000,false)
	draw_set_font(Font4);
	draw_set_color(c_black);
	draw_text(300,270,"GAME OVER")
}