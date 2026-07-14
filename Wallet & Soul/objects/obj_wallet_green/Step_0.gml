event_inherited();

if (owner == 1)
{
	if (global.player1_soul_gain_blue)
	{
		global.player1_soul_count_blue += 5;
		global.player1_soul_gain_blue = false;
	}
	if (global.player1_soul_gain_green)
	{
		global.player1_soul_count_green += 11;
		global.player1_soul_gain_green = false;
	}
	if (global.player1_soul_gain_red)
	{
		global.player1_soul_count_red += 5;
		global.player1_soul_gain_red = false;
	}
	if (global.player1_soul_gain_yellow)
	{
		global.player1_soul_count_yellow += 5;
		global.player1_soul_gain_yellow = false;
	}
}

if (owner == 2)
{
	if (global.player2_soul_gain_blue)
	{
		global.player2_soul_count_blue += 5;
		global.player2_soul_gain_blue = false;
	}
	if (global.player2_soul_gain_green)
	{
		global.player2_soul_count_green += 11;
		global.player2_soul_gain_green = false;
	}
	if (global.player2_soul_gain_red)
	{
		global.player2_soul_count_red += 5;
		global.player2_soul_gain_red = false;
	}
	if (global.player2_soul_gain_yellow)
	{
		global.player2_soul_count_yellow += 5;
		global.player2_soul_gain_yellow = false;
	}
}
