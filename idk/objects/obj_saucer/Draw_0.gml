if (target != noone && instance_exists(target))
	draw_line_width_color(x, y, target.x, target.y, 8, c_aqua, c_aqua);

color = blind ? c_maroon : c_white;
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, color, image_alpha);

draw_set_color(c_black);
draw_rectangle(x-32, y-64, x+32, y-52, false);
draw_set_color(c_red);
draw_rectangle(x-32, y-64, x-32+(64*hp/hp_max), y-52, false);

draw_set_color(c_black);
draw_rectangle(x-32, y-50, x+32, y-42, false);
draw_set_color(c_green);
draw_rectangle(x-32, y-50, x-32+(64*mana/mana_max), y-42, false);