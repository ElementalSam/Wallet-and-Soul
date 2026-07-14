function find_first_controller()
{
    for (var i = 0; i < 8; i++)
	{
        if (gamepad_is_connected(i))
		{
            return i;
        }
    }
    return -1;
}
