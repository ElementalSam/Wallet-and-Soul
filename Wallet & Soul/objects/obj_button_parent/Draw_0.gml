draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_menu);
draw_set_color(c_white);
if (global.controller_state > 0 && index == global.current_menu_index)
{
    var w = sprite_get_width(sprite_index);
    var h = sprite_get_height(sprite_index);
	draw_set_color(c_fuchsia);
    draw_rectangle(x - w/2 - 4, y - h/2 - 4, x + w/2 + 4, y + h/2 + 4, false);
	draw_set_color(c_white);
	draw_self();
}
draw_self();
draw_text(x, y, button_text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
