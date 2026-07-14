draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_title);
draw_text(x, y - 225, "Level Generator");

draw_set_font(fnt_menu);
draw_text(x, y + 25, "Create random levels with the generator!\nYou can determine the level's biome and size.\nInput up to 12 digits in the seed box, or leave it blank.\nA seed is the DNA of a level.\nReuse a seed with the same settings to replay a level!");

draw_set_halign(fa_left);
draw_set_valign(fa_top);
