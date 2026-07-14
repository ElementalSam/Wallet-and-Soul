image_alpha = 0.5;
if (!instance_exists(my_preview))
{
    my_preview = instance_create_layer(x - 450, y - 400, "Instances", obj_weapon_preview);
    my_preview.weapon_name = "Mace";
    my_preview.player1_weapon_unlocked = global.player1_weapon_unlocked_mace;
	my_preview.player2_weapon_unlocked = global.player2_weapon_unlocked_mace;
	my_preview.soul_cost_blue = 10;
	my_preview.soul_cost_green = 10;
	my_preview.soul_cost_red = 10;
	my_preview.soul_cost_yellow = 10;
	my_preview.weapon_reach = 16;
	my_preview.weapon_damage = 3;
	my_preview.weapon_cooldown = 2;
	my_preview.weapon_other = "none";
}
