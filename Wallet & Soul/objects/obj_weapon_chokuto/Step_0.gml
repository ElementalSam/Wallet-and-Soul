event_inherited();

if (instance_exists(obj_player1) && obj_player1.is_dashing && cooldown_timer > 0)
{
	cooldown_timer = 0;
}
