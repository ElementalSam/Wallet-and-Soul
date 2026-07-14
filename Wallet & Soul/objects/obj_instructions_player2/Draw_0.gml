draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_title);
draw_text(x, y - 225, "Player 2");

draw_set_font(fnt_menu);
draw_text(x, y + 25, "Wish to enjoy the game with a friend? Enable player 2!\nPlayer 2 has their own items and souls, like player 1.\nItems of one player don't impact the other player.\nIf a player dies, only they lose souls, but the level ends.\nCo-op is splitscreen, so the players aren't tied together!");

draw_set_halign(fa_left);
draw_set_valign(fa_top);
