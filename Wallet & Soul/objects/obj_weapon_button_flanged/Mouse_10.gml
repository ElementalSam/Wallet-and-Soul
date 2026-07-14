image_alpha = 0.5;
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
