function scr_generate_level(_region, _size, _seed)
{
	random_set_seed(_seed);
	
	switch(_size)
	{
		case 0: room_width = 1730; room_height = 1024; break;
		case 1: room_width = 2880; room_height = 1537; break;
		case 2: room_width = 5190; room_height = 2560; break;
	}
	
	var chunks_w = room_width div 576;
	var chunks_h = room_height div 512;
	
	var spawn_x = irandom(chunks_w - 1);
	var spawn_y = irandom(chunks_h - 1);
	
	flag_x = spawn_x;
	flag_y = spawn_y;
	
	plate_x = spawn_x;
	plate_y = spawn_y;
	
	while (flag_x == spawn_x && flag_y == spawn_y)
	{
		flag_x = irandom(chunks_w - 1);
		flag_y = irandom(chunks_h - 1);
	}
	
	while ((plate_x == spawn_x && plate_y == spawn_y) || (plate_x == flag_x && plate_y == flag_y))
	{
		plate_x = irandom(chunks_w - 1);
		plate_y = irandom(chunks_h - 1);
	}
	
	for (var cx = 0; cx < chunks_w; cx++)
	{
		for (var cy = 0; cy < chunks_h; cy++)
		{
			if ((cx == spawn_x && cy == spawn_y) || (cx == flag_x && cy == flag_y) || (cx == plate_x && cy == plate_y)) continue;
			
			var chunk_id = irandom(array_length(global.chunk_library)-1);
			var chunk = global.chunk_library[chunk_id];
			scr_place_chunk(chunk, cx * 576, cy * 512, _region);
		}
	}
	scr_place_chunk(global.chunk_spawn, spawn_x * 576, spawn_y * 512, _region);
	scr_place_chunk(global.chunk_flag, flag_x * 576, flag_y * 512, _region);
	scr_place_chunk(global.chunk_plate, plate_x * 576, plate_y * 512, _region);
	
	for (var edge_y = 0; edge_y < room_height; edge_y += 32)
	{
		var inst_left = instance_create_layer(0, edge_y, "Instances", obj_terrain_surface);
		inst_left.image_index = _region;
		var inst_right = instance_create_layer(room_width - 32, edge_y, "Instances", obj_terrain_surface);
		inst_right.image_index = _region;
	}
	for (var edge_x = 0; edge_x < room_width; edge_x += 32)
	{
		var inst_top = instance_create_layer(edge_x, 0, "Instances", obj_terrain_surface);
		inst_top.image_index = _region;
		var inst_bottom = instance_create_layer(edge_x, room_height - 32, "Instances", obj_terrain_surface);
		inst_bottom.image_index = _region;
	}
}
