if move_x != 0
{
	image_xscale = sign(move_x);
}

if enemy_health <= 0
{
	instance_destroy();
}
enemy_health = clamp(enemy_health, 0, enemy_max_health);
