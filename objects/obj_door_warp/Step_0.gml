if (place_meeting(x, y, obj_player)) {

    if (global.talkedToPerson && global.sawAnimal) {

        if (keyboard_check_pressed(ord("E"))) {
            
            obj_player.x = targetX;
            obj_player.y = targetY;
            room_goto(targetRoom);
            
        }
    }
}