if (place_meeting(x, y, obj_player)) {
if (target_rm != noone) {
        room_goto(target_rm);
        obj_player.x = targetX;
        obj_player.y = targetY;
    }
}