var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var half_w = sprite_width / 2;
var half_h = sprite_height / 2;
var hovered = (mx >= x - half_w && mx <= x + half_w && my >= y - half_h && my <= y + half_h);

if (index == obj_menu_controller.menu_index)
{
	if (!instance_exists(my_preview))
	{
	    my_preview = instance_create_layer(x - 450, y - 400, "Instances", obj_weapon_preview);
	    my_preview.weapon_name = "Flanged Mace";
	    my_preview.player1_weapon_unlocked = global.player1_weapon_unlocked_flanged;
		my_preview.player2_weapon_unlocked = global.player2_weapon_unlocked_flanged;
		my_preview.soul_cost_blue = 50;
		my_preview.soul_cost_green = 50;
		my_preview.soul_cost_red = 50;
		my_preview.soul_cost_yellow = 50;
		my_preview.weapon_reach = 16;
		my_preview.weapon_damage = 4;
		my_preview.weapon_cooldown = 2;
		my_preview.weapon_other = "Freezes all \nwisps in the level";
	}
}
else
{
    if (!hovered && instance_exists(my_preview))
	{
        with (my_preview) instance_destroy();
		my_preview = noone;
    }
}
