function scr_viewports(_orientation)
{
	view_enabled = true;
	
	if (global.is_menu)
	{
		view_enabled = false;
		return;
	}
	
	if (global.player2_enabled && !global.is_menu)
	{
		// Split screen
		view_set_visible(0, true);
		view_set_camera(0, global.cam_player1);
		view_set_visible(1, true);
		view_set_camera(1, global.cam_player2);
		
		switch (_orientation)
		{
			case 0: // Vertical split
			camera_set_view_size(global.cam_player1, 320, 360);
			camera_set_view_pos(global.cam_player1, 0, 0);
			camera_set_view_size(global.cam_player2, 320, 360);
			camera_set_view_pos(global.cam_player2, 320, 0);
			view_set_wport(0, 320);
			view_set_hport(0, 360);
			view_set_xport(0, 0);
			view_set_yport(0, 0);
			view_set_wport(1, 320);
			view_set_hport(1, 360);
			view_set_xport(1, 320);
			view_set_yport(1, 0);
			break;
			
			case 1: // Horizontal split
			camera_set_view_size(global.cam_player1, 640, 180);
			camera_set_view_pos(global.cam_player1, 0, 0);
			camera_set_view_size(global.cam_player2, 640, 180);
			camera_set_view_pos(global.cam_player2, 0, 180);
			view_set_wport(0, 640);
			view_set_hport(0, 180);
			view_set_xport(0, 0);
			view_set_yport(0, 0);
			view_set_wport(1, 640);
			view_set_hport(1, 180);
			view_set_xport(1, 0);
			view_set_yport(1, 180);
			break;
		}
	}
	else
	{
		// Single player
		view_set_visible(0, true);
		view_set_camera(0, global.cam_player1);
		camera_set_view_size(global.cam_player1, 640, 360);
		camera_set_view_pos(global.cam_player1, 0, 0);
		view_set_visible(1, false);
	}
}
