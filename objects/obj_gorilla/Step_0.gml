if (place_meeting(x, y, obj_player)) {
    if (keyboard_check_pressed(ord("E"))) {
        showDialogue = true;
		global.sawAnimal = true;
    }
}

if (showDialogue && mouse_check_button_pressed(mb_left)) {
    showDialogue = false;
}
