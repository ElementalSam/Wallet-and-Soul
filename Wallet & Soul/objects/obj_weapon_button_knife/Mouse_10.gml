image_alpha = 0.5;
if (!instance_exists(my_preview))
{
    my_preview = instance_create_layer(x + 75, y, "Instances", obj_weapon_preview);
    my_preview.weapon_name = "Knife";
    my_preview.player1_weapon_unlocked = true;
	my_preview.player2_weapon_unlocked = true;
	my_preview.weapon_reach = 10;
	my_preview.weapon_damage = 1;
	my_preview.weapon_cooldown = 0.5;
	my_preview.weapon_other = "none";
}
