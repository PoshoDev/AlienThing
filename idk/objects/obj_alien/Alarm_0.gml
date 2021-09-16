alarm[0] = irandom_range(30, 120)

if (!irandom(4)) {
	if (type == AlienType.launcher) {
		if (instance_exists(obj_saucer))
			var proj = instance_create_depth(x, y, -1, obj_boomershit);
			var targ = instance_nearest(x, y, obj_saucer);
			proj.direction = point_direction(x, y, targ.x, targ.y);
			proj.image_angle = proj.direction;
			proj.speed = 8;
	}
	else {
		var pee = instance_create_depth(x, y, 1, obj_pee);
		if (type == AlienType.boss)
			pee.sprite_index = spr_poop;
	}
}

mode = irandom_range(0, 1);

switch(mode){
	case AlienMode.idle:
		speed = 0;
	break;
	
	case AlienMode.move:
		direction = irandom_range(0, 360);
		speed = 4;
	break;
}