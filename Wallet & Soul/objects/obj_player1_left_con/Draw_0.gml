var binding = (player == 1) ? global.player1_keybinds[? action + "_con"] : global.player2_keybinds[? action + "_con"];
var keyname = binding_to_string(binding);

event_inherited();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x - 290, y, "Move Left:")
draw_text(x, y, keyname);
if (global.waiting_for_rebind)
{
    draw_text(400, room_height - 75, "Press a button, Start to cancel");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
