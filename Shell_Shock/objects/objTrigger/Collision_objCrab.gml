//crab collides with trigger
instance_create_layer(objectX, objectY, "Instances", spawnObject);

if (isSeagull)
{
	randomSoundIndex = irandom(2);


	switch(randomSoundIndex) 
	{
	    case 0:
	        audio_play_sound(snd_seagullCaw1, 1, false);
	        break;
	    case 1:
	        audio_play_sound(snd_seagullCaw2, 1, false);
	        break;
	    case 2:
	        audio_play_sound(snd_seagullCaw3, 1, false);
			break;
	}
}

instance_destroy();