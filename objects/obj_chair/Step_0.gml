if (place_meeting(x, y, obj_player)) {
  showDialogue = true;
}

if (showDialogue && mouse_check_button_pressed(mb_left)) {
    showDialogue = false;
}
