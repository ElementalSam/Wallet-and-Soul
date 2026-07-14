function keycode_to_string(_key)
{
    switch (_key)
	{
        case vk_space: return "Space";
        case vk_enter: return "Enter";
        case vk_shift: return "Shift";
        case vk_control: return "Ctrl";
        case vk_lalt: return "L Alt";
		case vk_ralt: return "R Alt";
        // Add more vk_* as needed
        default: return string(chr(_key));
    }
}
