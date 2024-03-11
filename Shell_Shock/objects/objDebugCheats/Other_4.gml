if(audio_is_playing(snd_CrabCakes))
{

	audio_stop_sound(snd_CrabCakes);
}
if(!audio_is_playing(snd_CrabCakes) && room == Level1Extended)
{
	audio_play_sound(snd_CrabCakes,100,1);
}
