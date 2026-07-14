draw_self();

var bar_width = 30;
var bar_height = 5;
var hp_percent = enemy_health / enemy_max_health;

var x1 = x - bar_width / 2;
var y1 = y - sprite_height / 2 - 1;
var x2 = x1 + bar_width;
var y2 = y1 + bar_height;

draw_set_color(c_gray);
draw_rectangle(x1, y1, x2, y2, false);

draw_set_color(c_green);
draw_rectangle(x1, y1, x1 + (bar_width * hp_percent), y2, false);

if enemy_health == enemy_max_health
{
	image_index = 0;
}
if enemy_health <= 8
{
	image_index = 1;
}
if enemy_health <= 6
{
	image_index = 2;
}
if enemy_health <= 4
{
	image_index = 3;
}
if enemy_health <= 2
{
	image_index = 4;
}
