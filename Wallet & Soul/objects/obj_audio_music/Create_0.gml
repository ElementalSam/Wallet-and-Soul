mask_index = spr_soundbar;
sprite_01 = spr_soundbox;
sprite_02 = spr_soundbar;

sprite_highlight = 0;
slider_box_width = sprite_get_width(sprite_02);
xslider_bar_position = x;
clicked = false;
value_reference = global.vol_music;
slider_percent = value_reference;
slider_bar_x = xslider_bar_position + (slider_percent * slider_box_width);

if (instance_exists(obj_menu_controller))
{
	index = 7;
}
else if (instance_exists(obj_pause))
{
	index = 2;
}

function execute_action()
{
    /// Nothing
}
function adjust_slider(direction)
{
    var bar_left = xslider_bar_position;
    var bar_right = xslider_bar_position + slider_box_width;

    slider_percent = clamp(slider_percent + direction * 0.05, 0, 1);
    slider_bar_x = bar_left + slider_percent * slider_box_width;

    global.vol_music = slider_percent;
    audio_master_gain(global.vol_music);
}
