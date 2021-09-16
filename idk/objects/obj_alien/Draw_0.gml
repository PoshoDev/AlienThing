draw_self();

draw_set_color(c_black);
draw_rectangle(x-32, y-72, x+32, y-64, false);
draw_set_color(c_red);
draw_rectangle(x-32, y-72, x-32+(64*hp/hp_max), y-64, false);