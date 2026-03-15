timer += 1;

if (image_index == 7 || image_index == 8 || image_index == 9 || image_index == 10) {
	if (timer > 30) {
		timer = 0;
		image_index += 1;
	}
} else if (timer > 180) {
	timer = 0;
	image_index += 1;
	
	zoom = 1;
	pan_x = room_width/2;
	pan_y = room_height/2;
}

if (image_index >= image_number) {
	room_goto(Room1);
}

//PANEL 1 → pan
if (image_index == 0) {
    pan_x += 0.2;
}

// PANEL 2 → zoom
if (image_index == 1) {
    zoom += 0.001;
}

// PANEL 3 → pan
if (image_index == 2) {
    pan_y += 0.2;
}

// PANELS 4 5 6 → zoom
if (image_index == 3 || image_index == 4 || image_index == 5) {
    zoom += 0.0005;
	pan_x += 0.005
}

// PANEL 7 → pan
if (image_index == 6) {
    pan_x -= 0.2;
}

//PANEL 12 → pan
if (image_index == 11) {
    pan_x -= 0.2;
}

// PANEL 13 → zoom
if (image_index == 12) {
    zoom += 0.0015;
}

// PANEL 14 → pan
if (image_index == 13) {
    zoom += 0.001;
}

// PANELS 15 → zoom
if (image_index == 14) {
    zoom += 0.0005;
	pan_x += 0.01
}