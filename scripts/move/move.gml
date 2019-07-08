// argument1 is x or y
// argument2 is speed (POS OR NEG)

var useX = argument0 == "x";
var spd = argument1;

for (var i = 0; i < abs(spd); i++){
	if (useX) {
		var newX = x + (1 * sign(spd));
		if (place_empty(newX, y) && (newX - (sprite_width / 2)) >= 0 && (newX + (sprite_width / 2)) <= room_width) {
			x = newX;
		}
	}
	else {
		var newY = y + (1 * sign(spd));
		if (place_empty(x, newY) && (newY - (sprite_height / 2)) >= 0 && (newY + (sprite_height / 2)) <= room_height) {
			y = newY;	
		}
	}
}