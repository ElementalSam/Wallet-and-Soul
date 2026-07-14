var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var half_w = sprite_width / 2;
var half_h = sprite_height / 2;
var hovered = (mx >= x - half_w && mx <= x + half_w && my >= y - half_h && my <= y + half_h);

if (index == obj_menu_controller.menu_index)
{
    if (!instance_exists(my_preview))
	{
        my_preview = instance_create_layer(x + 75, y, "Instances", obj_wallet_preview);
        my_preview.wallet_name = "Common Wallet";
        my_preview.player1_wallet_unlocked = true;
        my_preview.player2_wallet_unlocked = true;
		my_preview.soul_bonus_blue = 2;
        my_preview.soul_bonus_green = 2;
        my_preview.soul_bonus_red = 2;
        my_preview.soul_bonus_yellow = 2;
        my_preview.wallet_bonus = "none";
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
