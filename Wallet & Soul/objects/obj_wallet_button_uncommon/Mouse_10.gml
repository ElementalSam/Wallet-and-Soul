image_alpha = 0.5;
if (!instance_exists(my_preview))
{
    my_preview = instance_create_layer(x + 75, y, "Instances", obj_wallet_preview);
    my_preview.wallet_name = "Uncommon Wallet";
    my_preview.player1_wallet_unlocked = global.player1_wallet_unlocked_uncommon;
	my_preview.player2_wallet_unlocked = global.player2_wallet_unlocked_uncommon;
	my_preview.soul_cost_blue = 10;
	my_preview.soul_cost_green = 10;
	my_preview.soul_cost_red = 10;
	my_preview.soul_cost_yellow = 10;
	my_preview.soul_bonus_blue = 3;
	my_preview.soul_bonus_green = 3;
	my_preview.soul_bonus_red = 3;
	my_preview.soul_bonus_yellow = 3;
	my_preview.wallet_bonus = "none";
}
