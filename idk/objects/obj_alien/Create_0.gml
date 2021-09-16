enum AlienMode { idle, move }
enum AlienType { normal, boss, launcher };

if (irandom_range(0, 6) == 6) {
	type = AlienType.boss;
	sprite_index = spr_alien_boss;
	hp_max = 20;
}
else if (irandom_range(0, 3) == 3) {
	type = AlienType.launcher;
	sprite_index = spr_alien_launcher;
	hp_max = 10;
}
else {
	type = AlienType.normal;
	sprite_index = spr_alien;
	hp_max = 5;	
}


hp = hp_max;
mode = AlienMode.idle;
alarm[0] = 30;
dir = -1;

