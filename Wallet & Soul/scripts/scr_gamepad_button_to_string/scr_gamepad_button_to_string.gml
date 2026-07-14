function gamepad_button_to_string(button)
{
	switch (button)
	{
		case gp_face1: return "A-Cross";
		case gp_face2: return "B-Circle";
		case gp_face3: return "X-Square";
		case gp_face4: return "Y-Triangle";
		case gp_shoulderl: return "LT-L1";
		case gp_shoulderr: return "RT-R1";
		case gp_shoulderlb: return "L Bump";
		case gp_shoulderrb: return "R Bump";
		case gp_stickl: return "L St Press";
		case gp_stickr: return "R St Press";
		case gp_padu: return "Pad Up";
		case gp_padd: return "Pad Down";
		case gp_padl: return "Pad Left";
		case gp_padr: return "Pad Right";
		default: return "Button " + string(button);
	}
}
