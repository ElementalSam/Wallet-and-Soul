if (global.isPaused)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);
	draw_set_font(fnt_menu);
	var cx = display_get_gui_width() / 2;
	var cy = display_get_gui_height() / 2;
	if (pause_state == "main")
	{
	    draw_text(cx, cy - 125, "PAUSED");

	    var opt_color = (pause_index == 0) ? c_yellow : c_white;
	    draw_set_color(opt_color);
	    draw_text(cx, cy + 40, "Options");

	    opt_color = (pause_index == 1) ? c_yellow : c_white;
	    draw_set_color(opt_color);
	    draw_text(cx, cy + 125, "Resume");

	    draw_set_color(c_white);
		draw_text(cx, cy + 250, "Esc or Start to resume");
	    if (room == rm_play_level)
		{
	        draw_text(cx, cy + 190, "Seed: " + string(global.current_seed));
	    }
	}
	else if (pause_state == "options")
	{
		draw_text(cx, cy - 250, "OPTIONS");
		draw_text(cx, cy + 300, "Esc or Start to return");
	}
	draw_set_halign(fa_top);
	draw_set_valign(fa_left);
}
