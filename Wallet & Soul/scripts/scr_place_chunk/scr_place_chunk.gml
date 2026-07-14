function scr_place_chunk(_chunk, x_off, y_off, _region)
{
	var w = ds_grid_width(_chunk);
	var h = ds_grid_height(_chunk);
	
	var inst;
	
	for (var ix = 0; ix < w; ix++)
	{
		for (var iy = 0; iy < h; iy++)
		{
			var code = _chunk[# ix, iy];
			
			switch(code)
			{
				case 1:
				inst = instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_terrain_surface);
				inst.image_index = _region; break;
				case 2:
				inst = instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_terrain_surface_small);
				inst.image_index = _region; break;
				case 3:
				inst = instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_terrain_stone); break;
				case 4:
				inst = instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_terrain_stone_small); break;
				case 5:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_soul_blue); break;
				case 6:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_soul_green); break;
				case 7:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_soul_red); break;
				case 8:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_soul_yellow); break;
				case 9:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_heart); break;
				case 10:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_barricade); break;
				case 11:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_spike); break;
				case 12:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_blob); break;
				case 13:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_skeleton); break;
				case 14:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_wisp); break;
				case 15:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_shade); break;
				case 16:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_door_pressure); break;
				case 17:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_pressure_plate); break;
				case 18:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_platform); break;
				case 19:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_weapon_door_knife); break;
				case 20:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_weapon_door_mace); break;
				case 21:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_weapon_door_spear); break;
				case 22:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_weapon_door_sword); break;
				case 23:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_player1); break;
				case 24:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_flag); break;
				case 25:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_player2); break;
				case 26:
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", obj_dropper); break;
				case 98:
				var door_case = irandom_range(19, 22);
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", choose(obj_weapon_door_knife, obj_weapon_door_mace, obj_weapon_door_spear, obj_weapon_door_sword)); break;
				case 99:
				var soul_case = irandom_range(5, 8);
				instance_create_layer(x_off + ix * 32, y_off + iy * 32, "Instances", choose(obj_soul_blue, obj_soul_green, obj_soul_red, obj_soul_yellow)); break;
			}
		}
	}
}
