image_alpha = 0.5;
if (!instance_exists(my_preview))
{
    my_preview = instance_create_layer(x + 75, y - 400, "Instances", obj_weapon_preview);
    my_preview.weapon_name = "Dory";
    my_preview.player1_weapon_unlocked = global.player1_weapon_unlocked_dory;
	my_preview.player2_weapon_unlocked = global.player2_weapon_unlocked_dory;
	my_preview.soul_cost_blue = 30;
	my_preview.soul_cost_green = 30;
	my_preview.soul_cost_red = 30;
	my_preview.soul_cost_yellow = 30;
	my_preview.weapon_reach = 30;
	my_preview.weapon_damage = 2;
	my_preview.weapon_cooldown = 1.25;
	my_preview.weapon_other = "+ 1 max health";
}
