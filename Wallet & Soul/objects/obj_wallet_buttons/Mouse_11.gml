image_alpha = 1;
if (instance_exists(my_preview))
{
    with (my_preview) instance_destroy();
	my_preview = noone;
}
