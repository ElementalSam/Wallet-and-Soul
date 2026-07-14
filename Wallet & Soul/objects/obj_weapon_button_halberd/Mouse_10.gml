image_alpha = 0.5;
if (!instance_exists(my_preview))
{
    my_preview = instance_create_layer(x + 75, y - 400, "Instances", obj_weapon_preview);
    my_preview.weapon_name = "Halberd";
    my_preview.player1_weapon_unlocked = global.player1_weapon_unlocked_halberd;
	my_preview.player2_weapon_unlocked = global.player2_weapon_unlocked_halberd;
	my_preview.soul_cost_blue = 50;
	my_preview.soul_cost_green = 50;
	my_preview.soul_cost_red = 50;
	my_preview.soul_cost_yellow = 50;
	my_preview.weapon_reach = 24;
	my_preview.weapon_damage = 3;
	my_preview.weapon_cooldown = 1.5;
	my_preview.weapon_other = "+ 1 damage while\nhealth is full";
}
