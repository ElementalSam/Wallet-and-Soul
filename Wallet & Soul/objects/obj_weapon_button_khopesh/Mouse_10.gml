image_alpha = 0.5;
if (!instance_exists(my_preview))
{
    my_preview = instance_create_layer(x + 75, y, "Instances", obj_weapon_preview);
    my_preview.weapon_name = "Khopesh";
    my_preview.player1_weapon_unlocked = global.player1_weapon_unlocked_khopesh;
	my_preview.player2_weapon_unlocked = global.player2_weapon_unlocked_khopesh;
	my_preview.soul_cost_blue = 30;
	my_preview.soul_cost_green = 30;
	my_preview.soul_cost_red = 30;
	my_preview.soul_cost_yellow = 30;
	my_preview.weapon_reach = 10;
	my_preview.weapon_damage = 1;
	my_preview.weapon_cooldown = 0.5;
	my_preview.weapon_other = "+ 1 speed, \n+ 1 jump";
}
