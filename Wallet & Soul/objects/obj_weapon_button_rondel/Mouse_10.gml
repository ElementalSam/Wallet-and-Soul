image_alpha = 0.5;
if (!instance_exists(my_preview))
{
    my_preview = instance_create_layer(x + 75, y, "Instances", obj_weapon_preview);
    my_preview.weapon_name = "Rondel";
    my_preview.player1_weapon_unlocked = global.player1_weapon_unlocked_rondel;
	my_preview.player2_weapon_unlocked = global.player2_weapon_unlocked_rondel;
	my_preview.soul_cost_blue = 50;
	my_preview.soul_cost_green = 50;
	my_preview.soul_cost_red = 50;
	my_preview.soul_cost_yellow = 50;
	my_preview.weapon_reach = 12;
	my_preview.weapon_damage = 2;
	my_preview.weapon_cooldown = 0.5;
	my_preview.weapon_other = "+ 10 dash speed, \n- 0.5 dash cooldown";
}
