action = "move_left1";
player = 1;
index = 1;
function execute_action(player)
{
	if (!global.waiting_for_rebind)
	{
		global.waiting_for_rebind = true;
		global.rebind_target = action + "_con";
		global.rebind_player = player;
		global.rebind_mode = "controller";
		y = ystart + 5;
		image_alpha = 0.5;
	}
	else if (global.waiting_for_rebind)
	{
		exit;
	}
}
