var spd = 10;

if (keyboard_check(ord("W"))) {
	move("y", -spd);
}

if (keyboard_check(ord("A"))) {
	move("x", -spd);
}

if (keyboard_check(ord("S"))) {
	move("y", spd);
}

if (keyboard_check(ord("D"))) {
	move("x", spd);
}
