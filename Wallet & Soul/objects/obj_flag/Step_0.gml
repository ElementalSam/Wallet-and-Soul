if (activated)
{
	if (timer > 0)
	{
	    timer--;
	    if (timer == 0)
		{
			scr_save();
	        room_goto(rm_main_menu);
	    }
	}
}
