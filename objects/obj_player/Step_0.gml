right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
jump = keyboard_check(vk_space);


xSpd = (right_key - left_key) * moveSpd;


if (room != rm_restaurant) {
	x += xSpd;
	
if (jump && y == groundY) {
vspeed = -5;
}

if (y < groundY) {
    vspeed += 0.5;
}

y += vspeed;

if (y >= groundY) {
    y = groundY;
    vspeed = 0;
}

} else {
	
ySpd = (down_key - up_key) * moveSpd;

//collisions
if (place_meeting(x + xSpd, y, obj_wall) == true) {
	xSpd = 0;
}

if (place_meeting(x, y + ySpd, obj_wall) == true) {
	ySpd = 0;
}

if (place_meeting(x + xSpd, y, obj_table) == true) {
	xSpd = 0;
}

if (place_meeting(x, y + ySpd, obj_table) == true) {
	ySpd = 0;
}

	
	x += xSpd;
	y += ySpd;
	
}
