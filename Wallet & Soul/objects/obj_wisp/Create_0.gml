event_inherited();
image_speed = 1/9;

enemy_damage = 1;
enemy_health = 10;
enemy_max_health = 10;
if (instance_exists(obj_weapon_flanged))
{
	enemy_move_speed = 0;
}
else
{
	enemy_move_speed = 0.5;
}
