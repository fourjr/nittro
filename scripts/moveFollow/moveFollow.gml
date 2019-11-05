// argument1 is x or y
// argument2 is speed (POS OR NEG)

var useX = argument0 == "x";
var spd = argument1;

for (var i = 0; i < abs(spd); i++){
	if (useX) {
		var newX = x + (1 * sign(spd));
		if (place_empty(newX, y)) {
			x = newX;
		}
		else {
			newX = x - (1 * sign(spd));
			if (place_empty(newX, y)) {
				x = newX;
			}
			else {
				var newY = y + (1 * sign(spd));
				if (place_empty(x, newY)) {
					y = newY;
				}
				else {
					newY = y - (1 * sign(spd));
					if (place_empty(x, newY)) {
						y = newY
					}
					else {
						x = obj_player.x - obj_player.sprite_width;
						y = obj_player.y - obj_player.sprite_height;
					}
				}
			}
		}
	}
	else {
		var newY = y + (1 * sign(spd));
		if (place_empty(x, newY)) {
			y = newY;	
		}
		else {
			newY = y - (1 * sign(spd));
			if (place_empty(x, newY)) {
				y = newY;
			}
			else {
				var newX = x + (1 * sign(spd));
				if (place_empty(newX, y)) {
					x = newX;
				}
				else {
					newX = x - (1 * sign(spd));
					if (place_empty(newX, y)) {
						x = newX;
					}
					else {
						x = obj_player.x - obj_player.sprite_width;
						y = obj_player.y - obj_player.sprite_height;
					}
				}
			}	
		}
	}
}