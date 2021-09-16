alarm[0] = irandom_range(30, 120)

blind = false;

if (mana < mana_max)
	mana++;

if (instance_exists(obj_pee) && distance_to_object(obj_pee)<124 && mana>=4) {
	target = instance_nearest(x, y, obj_pee);
	target.mode = PeeMode.cleaning;
	target.alarm[0] = 60;
	target.targee = self;
	mana -= 4;
	mode = SaucerMode.idle;
}
else {
	mode = irandom_range(0, 1);
}

switch(mode){
	case SaucerMode.idle:
		speed = 0;
	break;
	
	case SaucerMode.move:
		direction = irandom_range(0, 360);
		speed = 4;
	break;
}
