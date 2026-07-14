if global.player1_soul_count_blue < 0
{
	global.player1_soul_count_blue = 0;
}
if global.player1_soul_count_green < 0
{
	global.player1_soul_count_green = 0;
}
if global.player1_soul_count_red < 0
{
	global.player1_soul_count_red = 0;
}
if global.player1_soul_count_yellow < 0
{
	global.player1_soul_count_yellow = 0;
}
if global.player2_soul_count_blue < 0
{
	global.player2_soul_count_blue = 0;
}
if global.player2_soul_count_green < 0
{
	global.player2_soul_count_green = 0;
}
if global.player2_soul_count_red < 0
{
	global.player2_soul_count_red = 0;
}
if global.player2_soul_count_yellow < 0
{
	global.player2_soul_count_yellow = 0;
}

if (!global.is_menu)
{
	if (instance_exists(obj_player1))
	{
		var cam_w = camera_get_view_width(global.cam_player1);
		var cam_h = camera_get_view_height(global.cam_player1);
		var px = obj_player1.x - cam_w / 2;
		var py = obj_player1.y - cam_h / 2;
		px = clamp(px, 0, room_width - cam_w);
		py = clamp(py, 0, room_height - cam_h);
		camera_set_view_pos(global.cam_player1, px, py);
	}
}
if (global.player2_enabled && instance_exists(obj_player2))
{
	var cam_w2 = camera_get_view_width(global.cam_player2);
	var cam_h2 = camera_get_view_height(global.cam_player2);
	var px2 = obj_player2.x - cam_w2 / 2;
	var py2 = obj_player2.y - cam_h2 / 2;
	px2 = clamp(px2, 0, room_width - cam_w2);
	py2 = clamp(py2, 0, room_height - cam_h2);
	camera_set_view_pos(global.cam_player2, px2, py2);
}

var pad_count = gamepad_get_device_count();
for (var i = 0; i < pad_count; i++)
{
    if (gamepad_is_connected(i))
    {
        if (global.player1_use_controller && global.player1_device == -1)
        {
            global.player1_device = i;
            show_debug_message("Assigned Player1 to device " + string(i));
        }
        else if (global.player2_use_controller && global.player2_device == -1 && global.player1_device != i)
        {
            global.player2_device = i;
            show_debug_message("Assigned Player2 to device " + string(i));
        }
    }
}

if (global.waiting_for_rebind)
{
	var pmap = (global.rebind_player == 1) ? global.player1_keybinds : global.player2_keybinds;
    if (global.rebind_mode == "keyboard")
    {
        for (var k = 1; k < 256; k++)
        {
            if (keyboard_check_pressed(k))
            {
				if (k == vk_escape)
                {
                    global.waiting_for_rebind = false;
                    break;
                }
				if (k == 1 || k == 2 || k == 4)
				{
					continue;
				}
                pmap[? global.rebind_target] = k;
                global.waiting_for_rebind = false;
                break;
            }
        }
    }
    else if (global.rebind_mode == "controller")
    {
		var device = (global.rebind_player == 1) ? global.player1_device : global.player2_device;
        if (device != -1)
        {
            var buttons = [gp_face1, gp_face2, gp_face3, gp_face4,
                           gp_shoulderl, gp_shoulderr,
                           gp_shoulderlb, gp_shoulderrb,
                           gp_start, gp_select,
                           gp_padu, gp_padd, gp_padl, gp_padr,
                           gp_stickl, gp_stickr];
            for (var i = 0; i < array_length(buttons); i++)
            {
                var b = buttons[i];
				if (gamepad_button_check_pressed(device, gp_start))
				{
					global.waiting_for_rebind = false;
					break;
				}
                if (gamepad_button_check_pressed(device, b))
                {
                    pmap[? global.rebind_target] = b;
                    global.waiting_for_rebind = false;
					global.rebind_cooldown = 5;
                    break;
                }
            }
        }
    }
}
