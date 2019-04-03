switch(room){
	case rm_game:
		draw_text(20, 20, "Score: " + string(score));
		draw_text(20, 40, "Lives: " + string(lives));
		break;
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_blue;
		draw_text_transformed_color(
			room_width / 2, 100, "SPACE ROCKS",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width / 2, 250,
			@"Score 1,000 points to win!
Up: move
Left/Right: change direction
Space: shoot

>> Press Enter to Start <<"
		);
		break;
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_green;
		draw_text_transformed_color(
			room_width / 2, 100, "YOU WIN!",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width / 2, 250,
			">> Press Enter to Restart <<"
		);		
		break;
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width / 2, 100, "GAME OVER",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width / 2, 250,
			">> Press Enter to Restart <<"
		);		
		break;
}
