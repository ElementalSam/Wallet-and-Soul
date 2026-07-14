draw_set_color(c_white);
draw_sprite(sprite_index, 0, x, y);

draw_set_font(fnt_hud);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_text(x - sprite_width / 2 + 10, y, seed_text);
if (active && current_time mod 1000 < 500)
{
	draw_text(x - sprite_width / 2 + 10 + string_width(seed_text), y, "|");
}

draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y - 75, "Seed");

draw_set_halign(fa_left);
draw_set_valign(fa_top);
