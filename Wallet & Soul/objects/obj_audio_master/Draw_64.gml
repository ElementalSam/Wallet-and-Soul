draw_set_font(fnt_menu);
if (instance_exists(global.controller_state) && index == global.current_menu_index)
{
    draw_rectangle(xslider_bar_position - 4, y - sprite_get_height(sprite_02)/2 - 4, xslider_bar_position + slider_box_width + 4, y + sprite_get_height(sprite_02)/2 + 4, false);
}

draw_sprite(sprite_02, 0, xslider_bar_position, y);
draw_sprite(sprite_01, 0, slider_bar_x, y);
draw_text(xslider_bar_position + slider_box_width + 20, y - 35, string(round(slider_percent * 100)) + "%");
draw_text(xslider_bar_position, y - 85, "Master");
