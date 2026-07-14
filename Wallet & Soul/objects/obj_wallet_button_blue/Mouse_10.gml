image_alpha = 0.5;
if (!instance_exists(my_preview))
{
    my_preview = instance_create_layer(x - 450, y, "Instances", obj_wallet_preview);
    my_preview.wallet_name = "Blue Wallet";
    my_preview.player1_wallet_unlocked = global.player1_wallet_unlocked_blue;
	my_preview.player2_wallet_unlocked = global.player2_wallet_unlocked_blue;
	my_preview.soul_cost_blue = 40;
	my_preview.soul_cost_green = 40;
	my_preview.soul_cost_red = 40;
	my_preview.soul_cost_yellow = 40;
	my_preview.soul_bonus_blue = 12;
	my_preview.soul_bonus_green = 6;
	my_preview.soul_bonus_red = 6;
	my_preview.soul_bonus_yellow = 6;
	my_preview.wallet_bonus = "none";
}
