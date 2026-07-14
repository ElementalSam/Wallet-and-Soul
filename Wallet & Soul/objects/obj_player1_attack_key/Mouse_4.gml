if (!global.waiting_for_rebind)
{
	global.waiting_for_rebind = true;
	global.rebind_target = action + "_key";
	global.rebind_player = player;
	global.rebind_mode = "keyboard";
	y = ystart + 5;
	image_alpha = 0.5;
}
else if (global.waiting_for_rebind)
{
	exit;
}
