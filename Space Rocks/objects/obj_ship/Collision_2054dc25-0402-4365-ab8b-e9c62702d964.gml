with(obj_game){
	alarm[1] = 3 * room_speed;
}
alarm[0] = room_speed;

audio_play_sound(snd_die, 1, false);

instance_destroy();

instance_create_layer(x, y, "Instances", obj_part_flame)