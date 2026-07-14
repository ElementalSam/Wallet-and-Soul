draw_set_font(fnt_hud);

var hud_x1_blue = 50;
var hud_x1_green = 150;
var hud_x1_red = 250;
var hud_x1_yellow = 350;
var hud_x1_wallet = 475;
var hud_x1_weapon = 605;

var room_w = 1366;

var hud_x2_blue = room_w - hud_x1_blue;
var hud_x2_green = room_w - hud_x1_green;
var hud_x2_red = room_w - hud_x1_red;
var hud_x2_yellow = room_w - hud_x1_yellow;
var hud_x2_wallet = room_w - hud_x1_wallet;
var hud_x2_weapon = room_w - hud_x1_weapon;

draw_set_color(c_aqua);
draw_text(70, 20, ":" + string(global.player1_soul_count_blue));
draw_sprite(spr_soul_blue, 0, 50, 35);

draw_set_color(c_lime);
draw_text(170, 20, ":" + string(global.player1_soul_count_green));
draw_sprite(spr_soul_green, 0, 150, 35);

draw_set_color(c_orange);
draw_text(270, 20, ":" + string(global.player1_soul_count_red));
draw_sprite(spr_soul_red, 0, 250, 35);

draw_set_color(c_yellow);
draw_text(370, 20, ":" + string(global.player1_soul_count_yellow));
draw_sprite(spr_soul_yellow, 0, 350, 35);

if (instance_exists(global.player1_selected_wallet))
{
    var wallet_inst = global.player1_selected_wallet;
	draw_sprite_ext(wallet_inst.sprite_index, wallet_inst.image_index, 475, 35, 1.5, 1.5, 0, c_white, 1);
}

if (instance_exists(global.player1_selected_weapon))
{
    var weapon_inst = global.player1_selected_weapon;
    draw_sprite_ext(weapon_inst.sprite_index, weapon_inst.image_index, 605, 45, 3, 3, 0, c_white, 1);
}

if (global.player2_enabled)
{
	draw_set_color(c_aqua);
	draw_text(hud_x2_blue - 20, 20, ":" + string(global.player2_soul_count_blue));
	draw_sprite(spr_soul_blue, 0, hud_x2_blue - 40, 35);
	
	draw_set_color(c_lime);
	draw_text(hud_x2_green - 20, 20, ":" + string(global.player2_soul_count_green));
	draw_sprite(spr_soul_green, 0, hud_x2_green - 40, 35);
	
	draw_set_color(c_orange);
	draw_text(hud_x2_red - 20, 20, ":" + string(global.player2_soul_count_red));
	draw_sprite(spr_soul_red, 0, hud_x2_red - 40, 35);
	
	draw_set_color(c_yellow);
	draw_text(hud_x2_yellow - 20, 20, ":" + string(global.player2_soul_count_yellow));
	draw_sprite(spr_soul_yellow, 0, hud_x2_yellow - 40, 35);
	
	if (instance_exists(global.player2_selected_wallet))
	{
		var wallet_inst = global.player2_selected_wallet;
		draw_sprite_ext(wallet_inst.sprite_index, wallet_inst.image_index, hud_x2_wallet, 35, 1.5, 1.5, 0, c_white, 1);
	}

	if (instance_exists(global.player2_selected_weapon))
	{
		var weapon_inst = global.player2_selected_weapon;
		draw_sprite_ext(weapon_inst.sprite_index, weapon_inst.image_index, hud_x2_weapon, 45, 3, 3, 0, c_white, 1);
	}
}

draw_set_color(c_white);
