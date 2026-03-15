right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
jump = keyboard_check(vk_space);


xSpd = (right_key - left_key) * moveSpd;

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


