switch (global.current_region)
{
	case 0: //Desert
	with (obj_terrain_surface)
	{
		image_index = 0;
	}
	with (obj_tree)
	{
		image_index = 0;
	}
	play_music(snd_desert_music);
	break;
	
	case 1: //Forest
	with (obj_terrain_surface)
	{
		image_index = 1;
	}
	with (obj_tree)
	{
		image_index = 1;
	}
	play_music(snd_forest_music);
	break;
	
	case 2: //Tundra
	with (obj_terrain_surface)
	{
		image_index = 2;
	}
	with (obj_tree)
	{
		image_index = 2;
	}
	play_music(snd_tundra_music);
	break;
	
	case 3: //Volcano
	with (obj_terrain_surface)
	{
		image_index = 3;
	}
	with (obj_tree)
	{
		image_index = 3;
	}
	play_music(snd_volcano_music);
	break;
}
scr_generate_level(global.current_region, global.current_size, global.current_seed);

global.is_menu = false;
scr_viewports(global.splitscreen_state);
