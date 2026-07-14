if (is_opening)
{
    image_speed = 1/20;
    if (image_index >= image_number - 1)
	{
		audio_play_sound_on(global.emitter_sound, snd_pressure_plate, 0, false);
		
		var popup = instance_create_layer( camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "Instances", obj_message_popup );
		popup.message = "Somewhere, a door has opened"; popup.timer = 60 * 3;
		
        instance_destroy();
    }
}
