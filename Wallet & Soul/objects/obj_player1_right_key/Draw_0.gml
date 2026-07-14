draw_self();
var binding = (player == 1) ? global.player1_keybinds[? action + "_key"] : global.player2_keybinds[? action + "_key"];
var keyname = keycode_to_string(binding);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x - 260, y, "Move right:")
draw_text(x, y, keyname);

if (global.waiting_for_rebind)
{
    draw_text(400, room_height - 90, "Press a key, Esc to cancel");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
