draw_self();

if (place_meeting(x, y, obj_player)) {
	draw_sprite_ext(spr_keyIndicator, 0, 11, 298,3.5, 3.5, 0, c_white, 1);
	if (keyboard_check_pressed(ord("E"))) {
		
	}
}