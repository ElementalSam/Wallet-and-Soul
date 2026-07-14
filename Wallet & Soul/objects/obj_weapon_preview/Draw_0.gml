draw_set_font(fnt_hud);

draw_set_color(c_black);
draw_rectangle(x, y, x + 375, y + 500, false);

draw_set_color(c_white);
draw_text(x + 20, y + 20, "Weapon: " + weapon_name);

draw_text(x + 20, y + 50, "Player 1 Unlocked: " + (player1_weapon_unlocked ? "Yes" : "No"));
draw_text(x + 20, y + 80, "Player 2 Unlocked: " + (player2_weapon_unlocked ? "Yes" : "No"));

draw_text(x + 20, y + 110, "Cost: ");

var icon_x = x + 50;
var icon_y = y + 160;

draw_set_color(c_aqua);
draw_sprite(spr_soul_blue, 0, icon_x, icon_y);
draw_text(icon_x + 25, icon_y - 15, string(soul_cost_blue));

draw_set_color(c_lime);
draw_sprite(spr_soul_green, 0, icon_x + 150, icon_y);
draw_text(icon_x + 175, icon_y - 15, string(soul_cost_green));

draw_set_color(c_red);
draw_sprite(spr_soul_red, 0, icon_x, icon_y + 50);
draw_text(icon_x + 25, icon_y + 35, string(soul_cost_red));

draw_set_color(c_yellow);
draw_sprite(spr_soul_yellow, 0, icon_x + 150, icon_y + 50);
draw_text(icon_x + 175, icon_y + 35, string(soul_cost_yellow));

draw_set_color(c_white);
draw_text(x + 20, y + 230, "Stats:");

draw_set_color(c_aqua);
draw_text(icon_x, icon_y + 110, "Reach: " + string(weapon_reach));

draw_set_color(c_red);
draw_text(icon_x, icon_y + 160, "Damage: " + string(weapon_damage));

draw_set_color(c_yellow);
draw_text(icon_x, icon_y + 210, "Cooldown: " + string(weapon_cooldown));

draw_set_color(c_lime);
draw_text(icon_x, icon_y + 260, "Other: " + string(weapon_other));

draw_set_color(c_white);
