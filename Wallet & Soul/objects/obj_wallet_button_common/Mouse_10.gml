image_alpha = 0.5;
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
