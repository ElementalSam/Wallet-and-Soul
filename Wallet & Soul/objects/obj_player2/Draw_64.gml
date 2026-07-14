if (global.player2_enabled)
{
	draw_set_font(fnt_hud);

	var bar_width = 165;
	var bar_height = 22;
	var spacing = 10;
	var start_y = 60;

	var hp_percent = global.player2_health / global.player2_max_health;
	var health_y = start_y;

	draw_set_color(c_black);
	draw_text(1085, health_y, "Health:");

	draw_set_color(c_gray);
	draw_rectangle(1180, health_y + spacing, 1180 + bar_width, health_y + spacing + bar_height, false);

	draw_set_color(c_green);
	draw_rectangle(1180, health_y + spacing, 1180 + (bar_width * hp_percent), health_y + spacing + bar_height, false);

	var dash_fill = 1 - (dash_cooldown_timer / global.player2_dash_cooldown);
	dash_fill = clamp(dash_fill, 0, 1);
	var dash_y = health_y + spacing + bar_height + spacing;

	draw_set_color(c_black);
	draw_text(1085, dash_y, "Dash:");

	draw_set_color(c_gray);
	draw_rectangle(1180, dash_y + spacing, 1180 + bar_width, dash_y + spacing + bar_height, false);

	draw_set_color(c_navy);
	draw_rectangle(1180, dash_y + spacing, 1180 + (bar_width * dash_fill), dash_y + spacing + bar_height, false);

	if (instance_exists(global.player2_weapon_instance))
	{
	    var weapon = global.player2_weapon_instance;
	    var attack_fill = 1 - (weapon.cooldown_timer / weapon.weapon_cooldown);
	    attack_fill = clamp(attack_fill, 0, 1);
	    var attack_y = dash_y + spacing + bar_height + spacing;
	
	    draw_set_color(c_black);
	    draw_text(1085, attack_y, "Attack:");
	
	    draw_set_color(c_gray);
	    draw_rectangle(1180, attack_y + spacing, 1180 + bar_width, attack_y + spacing + bar_height, false);
	
	    draw_set_color(c_orange);
	    draw_rectangle(1180, attack_y + spacing, 1180 + (bar_width * attack_fill), attack_y + spacing + bar_height, false);
	}
}
