if (global.controller_state > 0 && index == obj_menu_controller.menu_index)
{
    var w = sprite_get_width(sprite_index);
    var h = sprite_get_height(sprite_index);
    draw_rectangle(x - w/2 - 40, y - h/2 - 8, x + w/2 + 32, y + h/2 + 36, false);
	draw_self();
}
else
{
    draw_self();
}
