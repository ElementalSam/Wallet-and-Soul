function scr_init_chunks()
{
	global.chunk_library = [];
	
	var chunk_spawn = ds_grid_create(18, 16);
	for (var index_x = 0; index_x < 18; index_x++)
	{
		for (var index_y = 0; index_y < 16; index_y++)
		{
			chunk_spawn[# index_x, index_y] = 0; // airspace
			chunk_spawn[# 8, 11] = 2; // lower platform
			chunk_spawn[# 9, 11] = 2;
			chunk_spawn[# 8, 3] = 2; // upper platform
			chunk_spawn[# 9, 3] = 2;
			chunk_spawn[# 5, 4] = 23; // player 1
			chunk_spawn[# 11, 4] = 25; // player 2
		}
	}
	for (var index_x = 0; index_x < 18; index_x++)
	{
		if (index_x == 8 || index_x == 9) // bottom gap
		{
			chunk_spawn[# index_x, 15] = 0;
		}
		else
		{
			chunk_spawn[# index_x, 15] = 1; // bottom wall
		}
	}
	for (var index_x = 0; index_x < 16; index_x++)
	{
		if (index_x == 8 || index_x == 9) // middle gap
		{
			chunk_spawn[# index_x, 7] = 0;
		}
		else
		{
			chunk_spawn[# index_x, 7] = 2; // middle wall
		}
	}
	for (var index_y = 0; index_y < 16; index_y++)
	{
		chunk_spawn[# 0, index_y] = 1; // left wall
		chunk_spawn[# 17, index_y] = 1; // right wall
	}
	for (var oy = 12; oy <= 14; oy++) // doorway gap
	{
		chunk_spawn[# 17, oy] = (oy == 13) ? 10 : 0; // right door
		chunk_spawn[# 0, oy] = (oy == 13) ? 10 : 0; // left door
	}
	
	var chunk_flag = ds_grid_create(18, 16);
	for (var index_x = 0; index_x < 18; index_x++)
	{
		for (var index_y = 0; index_y < 16; index_y++)
		{
			chunk_flag[# index_x, index_y] = 0; // airspace
			chunk_flag[# 8, 11] = 2; // platform
			chunk_flag[# 9, 11] = 2;
			chunk_flag[# 9, 0] = 16; // top door
			chunk_flag[# 9, 14] = 16; // bottom door
			chunk_flag[# 8, 9] = 24; // flag
		}
	}
	for (var index_x = 0; index_x < 18; index_x++)
	{
		if (index_x == 8 || index_x == 9) // bottom gap
		{
			chunk_flag[# index_x, 15] = 0;
		}
		else
		{
			chunk_flag[# index_x, 15] = 1; // bottom wall
		}
	}
	for (var index_y = 0; index_y < 16; index_y++)
	{
		chunk_flag[# 0, index_y] = 1; // left wall
		chunk_flag[# 17, index_y] = 1; // right wall
	}
	for (var oy = 12; oy <= 14; oy++) // doorway gap
	{
		chunk_flag[# 17, oy] = (oy == 13) ? 16 : 0; // right door
		chunk_flag[# 0, oy] = (oy == 13) ? 16 : 0; // left door
	}
	
	var chunk_plate = ds_grid_create(18, 16);
	for (var index_x = 0; index_x < 18; index_x++)
	{
		for (var index_y = 0; index_y < 16; index_y++)
		{
			chunk_plate[# index_x, index_y] = 0; // airspace
			chunk_plate[# 8, 11] = 2; // platform
			chunk_plate[# 9, 11] = 2;
			chunk_plate[# 8, 9] = 17; // pressure plate
			chunk_plate[# 9, 5] = 9; // heart
		}
	}
	for (var index_x = 0; index_x < 18; index_x++)
	{
		if (index_x == 8 || index_x == 9) // bottom gap
		{
			chunk_plate[# index_x, 15] = 0;
		}
		else
		{
			chunk_plate[# index_x, 15] = 1; // bottom wall
		}
	}
	for (var index_y = 0; index_y < 16; index_y++)
	{
		chunk_plate[# 0, index_y] = 1; // left wall
		chunk_plate[# 17, index_y] = 1; // right wall
	}
	for (var oy = 12; oy <= 14; oy++) // doorway gap
	{
		chunk_plate[# 17, oy] = (oy == 13) ? 10 : 0; // right door
		chunk_plate[# 0, oy] = (oy == 13) ? 10 : 0; // left door
	}
	
	var chunk_flat = ds_grid_create(18, 16);
	for (var index_x = 0; index_x < 18; index_x++)
	{
		for (var index_y = 0; index_y < 16; index_y++)
		{
			if (index_y == 15)
			{
				if (index_x == 8 || index_x == 9) // floor gap
				{
					chunk_flat[# index_x, index_y] = 0;
				}
				else
				{
					chunk_flat[# index_x, index_y] = 1; // floor fill
				}
			}
			else
			{
				chunk_flat[# index_x, index_y] = 0; // airspace
				chunk_flat[# 13, 11] = 2; // right platform
				chunk_flat[# 4, 11] = 2; // left platform
				chunk_flat[# 8, 7] = 9; // heart
				chunk_flat[# 7, 13] = 12; // blobs
				chunk_flat[# 10, 13] = 12;
			}
		}
	}
	
	var chunk_blob = ds_grid_create(18, 16);
	for (var index_x = 0; index_x < 18; index_x++)
	{
		for (var index_y = 0; index_y < 16; index_y++)
		{
			chunk_blob[# index_x, index_y] = 0; // airspace
			chunk_blob[# 8, 11] = 2; // lower platform
			chunk_blob[# 9, 11] = 2;
			chunk_blob[# 8, 3] = 2; // upper platform
			chunk_blob[# 9, 3] = 2;
			chunk_blob[# 10, 13] = 12; // lower blobs
			chunk_blob[# 7, 13] = 12;
			chunk_blob[# 4, 13] = 12;
			chunk_blob[# 10, 5] = 12; // upper blobs
			chunk_blob[# 7, 5] = 12;
			chunk_blob[# 4, 5] = 12;
			chunk_blob[# 9, 9] = 99; // random soul
		}
	}
	for (var index_x = 0; index_x < 18; index_x++)
	{
		if (index_x == 8 || index_x == 9) // bottom gap
		{
			chunk_blob[# index_x, 15] = 0;
		}
		else
		{
			chunk_blob[# index_x, 15] = 1; // bottom wall
		}
	}
	for (var index_x = 0; index_x < 16; index_x++)
	{
		if (index_x == 8 || index_x == 9) // middle gap
		{
			chunk_blob[# index_x, 7] = 0;
		}
		else
		{
			chunk_blob[# index_x, 7] = 1; // middle wall
		}
	}
	for (var index_y = 0; index_y < 16; index_y++)
	{
		chunk_blob[# 0, index_y] = 1; // left wall
		chunk_blob[# 17, index_y] = 1; // right wall
	}
	for (var oy = 12; oy <= 14; oy++) // doorway gap
	{
		chunk_blob[# 17, oy] = (oy == 13) ? 10 : 0; // right door
		chunk_blob[# 0, oy] = (oy == 13) ? 10 : 0; // left door
	}
	
	var chunk_blob2 = ds_grid_create(18, 16);
	for (var index_x = 0; index_x < 18; index_x++)
	{
		for (var index_y = 0; index_y < 16; index_y++)
		{
			chunk_blob2[# index_x, index_y] = 0; // airspace
			chunk_blob2[# 2, 11] = 2; // lower left platform
			chunk_blob2[# 15, 11] = 2; // lower right platform
			chunk_blob2[# 8, 3] = 2; // upper platform
			chunk_blob2[# 9, 3] = 2;
			chunk_blob2[# 4, 7] = 1; // middle platform
			chunk_blob2[# 7, 7] = 1;
			chunk_blob2[# 10, 7] = 1;
			chunk_blob2[# 13, 7] = 1;
			chunk_blob2[# 5, 7] = 11; // middle platform spikes
			chunk_blob2[# 8, 7] = 11;
			chunk_blob2[# 11, 7] = 11;
			chunk_blob2[# 10, 13] = 12; // lower blobs
			chunk_blob2[# 7, 13] = 12;
			chunk_blob2[# 4, 13] = 12;
			chunk_blob2[# 10, 5] = 12; // upper blobs
			chunk_blob2[# 7, 5] = 12;
			chunk_blob2[# 4, 5] = 12;
			chunk_blob2[# 9, 4] = 99; // random soul
		}
	}
	for (var index_x = 0; index_x < 18; index_x++)
	{
		if (index_x == 8 || index_x == 9) // bottom gap
		{
			chunk_blob2[# index_x, 15] = 0;
		}
		else
		{
			chunk_blob2[# index_x, 15] = 1; // bottom wall
		}
	}
	for (var index_y = 0; index_y < 16; index_y++)
	{
		chunk_blob2[# 0, index_y] = 1; // left wall
		chunk_blob2[# 17, index_y] = 1; // right wall
	}
	for (var oy = 12; oy <= 14; oy++) // doorway gap
	{
		chunk_blob2[# 17, oy] = (oy == 13) ? 10 : 0; // right door
		chunk_blob2[# 0, oy] = (oy == 13) ? 10 : 0; // left door
	}
	
	var chunk_skeleton = ds_grid_create(18, 16);
	for (var index_x = 0; index_x < 18; index_x++)
	{
		for (var index_y = 0; index_y < 16; index_y++)
		{
			chunk_skeleton[# index_x, index_y] = 0; // airspace
			chunk_skeleton[# 8, 11] = 2; // lower platform
			chunk_skeleton[# 9, 11] = 2;
			chunk_skeleton[# 8, 3] = 2; // upper platform
			chunk_skeleton[# 9, 3] = 2;
			chunk_skeleton[# 10, 13] = 13; // lower skeletons
			chunk_skeleton[# 7, 13] = 13;
			chunk_skeleton[# 7, 5] = 13; // upper skeletons
			chunk_skeleton[# 10, 5] = 13;
			chunk_skeleton[# 2, 2] = 99; // random soul
		}
	}
	for (var index_x = 0; index_x < 18; index_x++)
	{
		if (index_x == 8 || index_x == 9) // bottom gap
		{
			chunk_skeleton[# index_x, 15] = 0;
		}
		else
		{
			chunk_skeleton[# index_x, 15] = 1; // bottom wall
		}
	}
	for (var index_x = 0; index_x < 16; index_x++)
	{
		if (index_x == 8 || index_x == 9) // middle gap
		{
			chunk_skeleton[# index_x, 7] = 0;
		}
		else
		{
			chunk_skeleton[# index_x, 7] = 1; // middle wall
		}
	}
	for (var index_y = 0; index_y < 16; index_y++)
	{
		chunk_skeleton[# 0, index_y] = 1; // left wall
		chunk_skeleton[# 17, index_y] = 1; // right wall
	}
	for (var oy = 12; oy <= 14; oy++) // doorway gap
	{
		chunk_skeleton[# 17, oy] = (oy == 13) ? 10 : 0; // right door
		chunk_skeleton[# 0, oy] = (oy == 13) ? 10 : 0; // left door
	}
	
	var chunk_skeleton2 = ds_grid_create(18, 16);
	for (var index_x = 0; index_x < 18; index_x++)
	{
		for (var index_y = 0; index_y < 16; index_y++)
		{
			chunk_skeleton2[# index_x, index_y] = 0; // airspace
			chunk_skeleton2[# 15, 12] = 4; // lower mini platform
			chunk_skeleton2[# 2, 9] = 4; // lower level
			chunk_skeleton2[# 4, 9] = 4;
			chunk_skeleton2[# 6, 9] = 4;
			chunk_skeleton2[# 8, 9] = 4;
			chunk_skeleton2[# 10, 9] = 4;
			chunk_skeleton2[# 12, 9] = 4;
			chunk_skeleton2[# 14, 9] = 4;
			chunk_skeleton2[# 9, 3] = 4; // upper mini platform
			chunk_skeleton2[# 7, 3] = 4;
			chunk_skeleton2[# 7, 1] = 3;
			chunk_skeleton2[# 10, 13] = 13; // lower skeletons
			chunk_skeleton2[# 5, 13] = 13;
			chunk_skeleton2[# 8, 4] = 13; // upper skeleton
			chunk_skeleton2[# 15, 2] = 99; // random soul
			chunk_skeleton2[# 8, 7] = 9; // heart
		}
	}
	for (var index_x = 0; index_x < 18; index_x++)
	{
		if (index_x == 8 || index_x == 9) // bottom gap
		{
			chunk_skeleton2[# index_x, 15] = 0;
		}
		else
		{
			chunk_skeleton2[# index_x, 15] = 1; // bottom wall
		}
	}
	for (var index_x = 0; index_x < 16; index_x++)
	{
		if (index_x == 1 || index_x == 2) // left gap
		{
			chunk_skeleton2[# index_x, 6] = 0;
		}
		else
		{
			chunk_skeleton2[# index_x, 6] = 4; // upper level
		}
	}
	for (var index_y = 0; index_y < 16; index_y++)
	{
		chunk_skeleton2[# 0, index_y] = 1; // left wall
		chunk_skeleton2[# 17, index_y] = 1; // right wall
	}
	for (var oy = 12; oy <= 14; oy++) // doorway gap
	{
		chunk_skeleton2[# 17, oy] = (oy == 13) ? 10 : 0; // right door
		chunk_skeleton2[# 0, oy] = (oy == 13) ? 10 : 0; // left door
	}
	
	var chunk_wisp = ds_grid_create(18, 16);
	for (var index_x = 0; index_x < 18; index_x++)
	{
		for (var index_y = 0; index_y < 16; index_y++)
		{
			if (index_y == 15)
			{
				if (index_x == 8 || index_x == 9) // floor gap
				{
					chunk_wisp[# index_x, index_y] = 0;
				}
				else
				{
					chunk_wisp[# index_x, index_y] = 1; // floor fill
				}
			}
			else
			{
				chunk_wisp[# index_x, index_y] = 0; // airspace
				chunk_wisp[# 13, 11] = 2; // right platform
				chunk_wisp[# 4, 11] = 2; // left platform
				chunk_wisp[# 8, 7] = 14; // wisp
				chunk_wisp[# 9, 7] = 99; // random soul
			}
		}
	}
	
	var chunk_shade = ds_grid_create(18, 16);
	for (var index_x = 0; index_x < 18; index_x++)
	{
		for (var index_y = 0; index_y < 16; index_y++)
		{
			chunk_shade[# index_x, index_y] = 0; // airspace
			chunk_shade[# 8, 11] = 2; // lower platform
			chunk_shade[# 9, 11] = 2;
			chunk_shade[# 8, 3] = 2; // upper platform
			chunk_shade[# 9, 3] = 2;
			chunk_shade[# 10, 13] = 15; // shade
			chunk_shade[# 15, 11] = 99; // random soul
		}
	}
	for (var index_x = 0; index_x < 18; index_x++)
	{
		if (index_x == 8 || index_x == 9) // bottom gap
		{
			chunk_shade[# index_x, 15] = 0;
		}
		else
		{
			chunk_shade[# index_x, 15] = 1; // bottom wall
		}
	}
	for (var index_x = 0; index_x < 16; index_x++)
	{
		if (index_x == 8 || index_x == 9) // middle gap
		{
			chunk_shade[# index_x, 7] = 0;
		}
		else
		{
			chunk_shade[# index_x, 7] = 1; // middle wall
		}
	}
	for (var index_y = 0; index_y < 16; index_y++)
	{
		chunk_shade[# 0, index_y] = 1; // left wall
		chunk_shade[# 17, index_y] = 1; // right wall
	}
	for (var oy = 12; oy <= 14; oy++) // doorway gap
	{
		chunk_shade[# 17, oy] = (oy == 13) ? 10 : 0; // right door
		chunk_shade[# 0, oy] = (oy == 13) ? 10 : 0; // left door
	}
	
	var chunk_dropper = ds_grid_create(18, 16);
	for (var index_x = 0; index_x < 18; index_x++)
	{
		for (var index_y = 0; index_y < 16; index_y++)
		{
			if (index_y == 15)
			{
				if (index_x == 8 || index_x == 9) // floor gap
				{
					chunk_dropper[# index_x, index_y] = 0;
				}
				else
				{
					chunk_dropper[# index_x, index_y] = 1; // floor fill
				}
			}
			else
			{
				chunk_dropper[# index_x, index_y] = 0; // airspace
				chunk_dropper[# 8, 3] = 2; // top platform
				chunk_dropper[# 9, 3] = 2;
				chunk_dropper[# 6, 7] = 2; // middle platforms
				chunk_dropper[# 11, 7] = 2;
				chunk_dropper[# 4, 11] = 2; // lower platforms
				chunk_dropper[# 13, 11] = 2;
				chunk_dropper[# 8, 7] = 9; // heart
				chunk_dropper[# 9, 7] = 99; // random soul
				chunk_dropper[# 7, 13] = 12; // blob
				chunk_dropper[# 13, 1] = 3; // right dropper bases
				chunk_dropper[# 15, 1] = 3;
				chunk_dropper[# 13, 3] = 26; // right droppers
				chunk_dropper[# 15, 3] = 26;
				chunk_dropper[# 4, 1] = 3; // left dropper bases
				chunk_dropper[# 2, 1] = 3;
				chunk_dropper[# 4, 3] = 26; // left droppers
				chunk_dropper[# 2, 3] = 26;
			}
		}
	}
	
	var chunk_stairs = ds_grid_create(18, 16);
	for (var index_x = 0; index_x < 18; index_x++)
	{
		for (var index_y = 0; index_y < 16; index_y++)
		{
			chunk_stairs[# index_x, index_y] = 0; // airspace
			chunk_stairs[# 8, 11] = 4; // stairs
			chunk_stairs[# 9, 7] = 4;
			chunk_stairs[# 8, 3] = 4;
			chunk_stairs[# 14, 0] = 3; // right dropper base
			chunk_stairs[# 14, 2] = 26; // right dropper
			chunk_stairs[# 3, 0] = 3; // left dropper base
			chunk_stairs[# 3, 2] = 26; // left dropper
		}
	}
	for (var index_x = 0; index_x < 18; index_x++)
	{
		if (index_x == 8 || index_x == 9) // bottom gap
		{
			chunk_stairs[# index_x, 15] = 0;
		}
		else
		{
			chunk_stairs[# index_x, 15] = 1; // bottom wall
		}
	}
	for (var index_y = 0; index_y < 16; index_y++)
	{
		chunk_stairs[# 0, index_y] = 1; // left wall
		chunk_stairs[# 17, index_y] = 1; // right wall
	}
	for (var index_y = 0; index_y < 11; index_y++) // inner walls
	{
		chunk_stairs[# 6, index_y] = 3; // left
		chunk_stairs[# 11, index_y] = 3; // right
	}
	for (var oy = 12; oy <= 14; oy++) // doorway gap
	{
		chunk_stairs[# 17, oy] = (oy == 13) ? 10 : 0; // right door
		chunk_stairs[# 0, oy] = (oy == 13) ? 10 : 0; // left door
	}
	
	var chunk_platform = ds_grid_create(18, 16);
	for (var index_x = 0; index_x < 18; index_x++)
	{
		for (var index_y = 0; index_y < 16; index_y++)
		{
			chunk_platform[# index_x, index_y] = 0; // airspace
			chunk_platform[# 15, 12] = 18; // lower moving platform
			chunk_platform[# 2, 9] = 18; // lower middle moving platform
			chunk_platform[# 15, 6] = 18; // upper middle moving platform
			chunk_platform[# 8, 3] = 4; // top platform
			chunk_platform[# 9, 3] = 4;
			chunk_platform[# 4, 13] = 11; // left spikes
			chunk_platform[# 6, 13] = 11;
			chunk_platform[# 13, 13] = 11; // right spikes
			chunk_platform[# 11, 13] = 11;
			chunk_platform[# 3, 6] = 9; // heart
		}
	}
	for (var index_x = 0; index_x < 18; index_x++)
	{
		if (index_x == 8 || index_x == 9) // bottom gap
		{
			chunk_platform[# index_x, 15] = 0;
		}
		else
		{
			chunk_platform[# index_x, 15] = 1; // bottom wall
		}
	}
	for (var index_y = 0; index_y < 16; index_y++)
	{
		chunk_platform[# 0, index_y] = 3; // left wall
		chunk_platform[# 17, index_y] = 3; // right wall
	}
	for (var oy = 12; oy <= 14; oy++) // doorway gap
	{
		chunk_platform[# 17, oy] = (oy == 13) ? 10 : 0; // right door
		chunk_platform[# 0, oy] = (oy == 13) ? 10 : 0; // left door
	}
	
	var chunk_doors = ds_grid_create(18, 16);
	for (var index_x = 0; index_x < 18; index_x++)
	{
		for (var index_y = 0; index_y < 16; index_y++)
		{
			chunk_doors[# index_x, index_y] = 0; // airspace
			chunk_doors[# 8, 11] = 4; // stairs
			chunk_doors[# 9, 7] = 4;
			chunk_doors[# 8, 3] = 4;
			chunk_doors[# 4, 7] = 4; // middle left platform
			chunk_doors[# 2, 7] = 4;
			chunk_doors[# 13, 7] = 4; // middle right platform
			chunk_doors[# 15, 7] = 4;
			chunk_doors[# 2, 3] = 9; // left hearts
			chunk_doors[# 2, 5] = 9;
			chunk_doors[# 4, 3] = 9;
			chunk_doors[# 4, 5] = 9;
			chunk_doors[# 13, 3] = 9; // right hearts
			chunk_doors[# 13, 5] = 9;
			chunk_doors[# 15, 3] = 9;
			chunk_doors[# 15, 5] = 9;
		}
	}
	for (var index_x = 0; index_x < 18; index_x++)
	{
		if (index_x == 8 || index_x == 9) // bottom gap
		{
			chunk_doors[# index_x, 15] = 0;
		}
		else
		{
			chunk_doors[# index_x, 15] = 1; // bottom wall
		}
	}
	for (var index_y = 0; index_y < 16; index_y++) // outer walls
	{
		chunk_doors[# 0, index_y] = 1; // left
		chunk_doors[# 17, index_y] = 1; // right
	}
	for (var index_y = 0; index_y < 11; index_y++) // inner walls
	{
		chunk_doors[# 6, index_y] = 3; // left
		chunk_doors[# 11, index_y] = 3; // right
	}
	for (var oy = 12; oy <= 14; oy++) // outer doorway gap
	{
		chunk_doors[# 17, oy] = (oy == 13) ? 10 : 0; // right door
		chunk_doors[# 0, oy] = (oy == 13) ? 10 : 0; // left door
	}
		for (var oy = 4; oy <= 6; oy++) // inner doorway gap
	{
		chunk_doors[# 11, oy] = (oy == 5) ? 98 : 0; // right weapon door
		chunk_doors[# 6, oy] = (oy == 5) ? 98 : 0; // left weapon door
	}
	
	global.chunk_spawn = chunk_spawn;
	global.chunk_flag = chunk_flag;
	global.chunk_plate = chunk_plate;
	array_push(global.chunk_library, chunk_flat);
	array_push(global.chunk_library, chunk_blob);
	array_push(global.chunk_library, chunk_blob2);
	array_push(global.chunk_library, chunk_skeleton);
	array_push(global.chunk_library, chunk_skeleton2);
	array_push(global.chunk_library, chunk_wisp);
	array_push(global.chunk_library, chunk_shade);
	array_push(global.chunk_library, chunk_dropper);
	array_push(global.chunk_library, chunk_stairs);
	array_push(global.chunk_library, chunk_platform);
	array_push(global.chunk_library, chunk_doors);
}
