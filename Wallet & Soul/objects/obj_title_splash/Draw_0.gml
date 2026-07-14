draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_title);
draw_text(x, y - 300, "Wallet & Soul");

draw_set_font(fnt_menu);
draw_set_color(c_white);

if global.splash = 1
{
	if current_month = 1 && current_day = 1
	{
		draw_text (room_width / 2, room_height / 2, "Happy New Year!");
	}
	else if current_month = 2 && current_day >= 7 && current_day <= 21
	{
		switch(splash)
		{
			case 0: draw_text (room_width / 2, room_height / 2 + 100, "Will you be my Player 2?"); break;
			case 1: draw_text (room_width / 2, room_height / 2 + 100, "Happy Valentines!"); break;
			case 2: draw_text (room_width / 2, room_height / 2 + 100, "Pick me up like you picked Wallet & Soul!"); break;
			case 3: draw_text (room_width / 2, room_height / 2 + 100, "The first two letters of my Alphabet are \"U\" and \"I\""); break;
			case 4: draw_text (room_width / 2, room_height / 2 + 100, "Do you believe in love at first launch?"); break;
			case 5: draw_text (room_width / 2, room_height / 2 + 100, "Roses are red, violets are blue, I got a wallet just for you"); break;
			case 6: draw_text (room_width / 2, room_height / 2 + 100, "Love is in the air. Souls are also in the air..."); break;
			case 7: draw_text (room_width / 2, room_height / 2 + 100, "We go together like two peas in a wallet!"); break;
			case 8: draw_text (room_width / 2, room_height / 2 + 100, "Falling in love sounds painful, but there's no fall damage!"); break;
		}
	}
	else if current_month = 2 && current_day = 29
	{
		draw_text (room_width / 2, room_height / 2 + 100, "Woah, an extra day!");
	}
	else if current_month = 6
	{
		switch(splash)
		{
			case 0: draw_text (room_width / 2, room_height / 2 + 100, "Pride is a sin"); break;
			case 1: draw_text (room_width / 2, room_height / 2 + 100, "Happy Noahic Covenant month!"); break;
			case 2: draw_text (room_width / 2, room_height / 2 + 100, "Don't taste the rainbow."); break;
			case 3: draw_text (room_width / 2, room_height / 2 + 100, "Two genders, many mental illnesses, and infinite souls!"); break;
		}
	}
	else if current_month = 7 && current_day = 4
	{
		draw_text (room_width / 2, room_height / 2 + 100, "Happy July 4th, Americans!");
	}
	else if current_month = 12 && current_day = 25
	{
		switch(splash)
		{
			case 0: draw_text (room_width / 2, room_height / 2 + 100, "Merry Christmas!"); break;
			case 1: draw_text (room_width / 2, room_height / 2 + 100, "A Savior is Born!"); break;
			case 2: draw_text (room_width / 2, room_height / 2 + 100, "I think Mary knew. An angel told her!"); break;
		}
	}
	else
	{
		switch(splash)
		{
			case 0: draw_text (room_width / 2, room_height / 2 + 100, "Dreams of being on Steam someday..."); break;
			case 1: draw_text (room_width / 2, room_height / 2 + 100, "Also try Space Trials!"); break;
			case 2: draw_text (room_width / 2, room_height / 2 + 100, "Also try Galaxy Hassle!"); break;
			case 3: draw_text (room_width / 2, room_height / 2 + 100, "Thank you early testers!"); break;
			case 4: draw_text (room_width / 2, room_height / 2 + 100, "Dash through those annoying enemies."); break;
			case 5: draw_text (room_width / 2, room_height / 2 + 100, "No microtransactions, ever."); break;
			case 6: draw_text (room_width / 2, room_height / 2 + 100, "Pro-tip: don't take any damage"); break;
			case 7: draw_text (room_width / 2, room_height / 2 + 100, "Don't lose all your health, you will die"); break;
			case 8: draw_text (room_width / 2, room_height / 2 + 100, "It's a garbage can, not a garbage can't"); break;
			case 9: draw_text (room_width / 2, room_height / 2 + 100, "All your souls are belong to us"); break;
			case 10: draw_text (room_width / 2, room_height / 2 + 100, "Forever ad-free"); break;
			case 11: draw_text (room_width / 2, room_height / 2 + 100, "No cheating!"); break;
			case 12: draw_text (room_width / 2, room_height / 2 + 100, "Skill to win!"); break;
			case 13: draw_text (room_width / 2, room_height / 2 + 100, "None were harmed in making this game, except Bill"); break;
			case 14: draw_text (room_width / 2, room_height / 2 + 100, "It's great to be straight!"); break;
			case 15: draw_text (room_width / 2, room_height / 2 + 100, "Mostly unlimited power!"); break;
			case 16: draw_text (room_width / 2, room_height / 2 + 100, "You overestimate my power!"); break;
			case 17: draw_text (room_width / 2, room_height / 2 + 100, "I have a good feeling about this..."); break;
			case 18: draw_text (room_width / 2, room_height / 2 + 100, "Don't die, pumpkin pie!"); break;
			case 19: draw_text (room_width / 2, room_height / 2 + 100, "Eat more chicken AND beef"); break;
			case 20: draw_text (room_width / 2, room_height / 2 + 100, "The levels have closed borders!"); break;
			case 21: draw_text (room_width / 2, room_height / 2 + 100, "Rename the wireless mouse to hamster!"); break;
			case 22: draw_text (room_width / 2, room_height / 2 + 100, "Contains no repetitive, unnecessary chorus."); break;
			case 23: draw_text (room_width / 2, room_height / 2 + 100, "Avoid soul-crushing defeats!"); break;
			case 24: draw_text (room_width / 2, room_height / 2 + 100, "I want patience right now!"); break;
			case 25: draw_text (room_width / 2, room_height / 2 + 100, "Player 2 is here!"); break;
			case 26: draw_text (room_width / 2, room_height / 2 + 100, "Drink water."); break;
			case 27: draw_text (room_width / 2, room_height / 2 + 100, "Get a good knight's sleep."); break;
			case 28: draw_text (room_width / 2, room_height / 2 + 100, "Going where no soul has gone before."); break;
			case 29: draw_text (room_width / 2, room_height / 2 + 100, "Don't lose your wallet!"); break;
			case 30: draw_text (room_width / 2, room_height / 2 + 100, "Basic wallets and weapons are great to buy early."); break;
		}
	}
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
