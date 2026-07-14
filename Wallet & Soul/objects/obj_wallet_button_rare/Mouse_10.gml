image_alpha = 0.5;
if (!instance_exists(my_preview))
{
    my_preview = instance_create_layer(x + 75, y, "Instances", obj_wallet_preview);
    my_preview.wallet_name = "Rare Wallet";
    my_preview.player1_wallet_unlocked = global.player1_wallet_unlocked_rare;
	my_preview.player2_wallet_unlocked = global.player2_wallet_unlocked_rare;
	my_preview.soul_cost_blue = 20;
	my_preview.soul_cost_green = 20;
	my_preview.soul_cost_red = 20;
	my_preview.soul_cost_yellow = 20;
	my_preview.soul_bonus_blue = 4;
	my_preview.soul_bonus_green = 4;
	my_preview.soul_bonus_red = 4;
	my_preview.soul_bonus_yellow = 4;
	my_preview.wallet_bonus = "none";
}
