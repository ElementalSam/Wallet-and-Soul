var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var half_w = sprite_width / 2;
var half_h = sprite_height / 2;
var hovered = (mx >= x - half_w && mx <= x + half_w && my >= y - half_h && my <= y + half_h);

if (index == obj_menu_controller.menu_index)
{
	if (!instance_exists(my_preview))
	{
	    my_preview = instance_create_layer(x + 75, y - 250, "Instances", obj_wallet_preview);
	    my_preview.wallet_name = "Dash Wallet";
	    my_preview.player1_wallet_unlocked = global.player1_wallet_unlocked_dash;
		my_preview.player2_wallet_unlocked = global.player2_wallet_unlocked_dash;
		my_preview.soul_cost_blue = 50;
		my_preview.soul_cost_green = 50;
		my_preview.soul_cost_red = 50;
		my_preview.soul_cost_yellow = 50;
		my_preview.soul_bonus_blue = 6;
		my_preview.soul_bonus_green = 6;
		my_preview.soul_bonus_red = 6;
		my_preview.soul_bonus_yellow = 6;
		my_preview.wallet_bonus = "+2 dash speed";
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
