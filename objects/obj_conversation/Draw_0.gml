// text
// x will be elderly's x
// y will be elderly's y

depth = -20000;
draw_set_font(fnt_courier_14);

if (!checkedAngle) {
	if (image_angle % 180 != 0) {
		var temp = spr_height;
		spr_height = spr_width;
		spr_width = temp;
	}
	checkedAngle = true;
}

var y1 = y - (spr_height / 2 + 45)

var splitLines = undefined;
var index = 0;

if (sign(obj_player.x - x) < 0) {
	// on left
	var x1 = x + (spr_width / 2 + 10);
	var viewWidth = view_wport[0] + camera_get_view_x(view_camera[0]);
	var allowance = viewWidth - x1 - 10;
}
else {
	var x2 = x - (spr_width / 2 + 10);
	var allowance = x2 - camera_get_view_x(view_camera[0]) - 10;
}

// arr[at++] = sub_str;
var splitString = string_split(text, " ");
var subString = "";
for (var i = 0; i < array_length_1d(splitString); i++) {

	if (allowance < string_width(subString + splitString[i])) {
		splitLines[index++] = subString;
		subString = splitString[i] + " ";
	}
	else {
		subString += splitString[i] + " ";
	}
}

if (subString != "") {
	splitLines[index++] = subString;
}

var text_width = 0;
var text_height = 0;
for (var i = 0; i < array_length_1d(splitLines); i++) {
	text_height += string_height(splitLines[i]) + 5;
	text_width = max(text_width, string_width(splitLines[i]));
}

if (sign(obj_player.x - x) < 0) {
	// on left
	var x2 = x1 + text_width + 5;
}
else {
	var x1 = x2 - text_width - 5;
}

var y2 = y1 + text_height + 5;

draw_set_colour(c_white);
draw_roundrect(x1, y1, x2, y2, false);
draw_set_colour(c_black);
draw_roundrect(x1 - 1, y1 - 1, x2 + 1, y2 + 1, true); // outline

var draw_y = y1 + 5;
for (var i = 0; i < array_length_1d(splitLines); i++) {
	draw_text(x1 + 10, draw_y, splitLines[i]);
	draw_y += string_height(splitLines[i]) + 5;
}