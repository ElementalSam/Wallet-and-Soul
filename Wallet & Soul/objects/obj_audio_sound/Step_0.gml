var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var bar_left = xslider_bar_position;
var bar_right = xslider_bar_position + slider_box_width;
var bar_top = y - sprite_get_height(sprite_02)/2;
var bar_bottom = y + sprite_get_height(sprite_02)/2;

var over_slider = (mx >= bar_left && mx <= bar_right && my >= bar_top && my <= bar_bottom);
if (over_slider)
{
	if (mouse_check_button_pressed(mb_left))
	{
		clicked = true;
	}
}
if (clicked)
{
	slider_bar_x = clamp(mx, bar_left, bar_right);
	if (mouse_check_button_released(mb_left))
	{
		clicked = false;
	}
}

slider_percent = (slider_bar_x - bar_left) / slider_box_width;
global.vol_sound = slider_percent;
audio_emitter_gain(global.emitter_sound, global.vol_sound);
