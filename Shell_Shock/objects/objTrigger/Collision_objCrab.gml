//crab collides with trigger
objSpawn = instance_create_layer(objectX, objectY, "Instances", spawnObject);
if(objSpawn.object_index == objUmbrellaDynamic)
{
	objSpawn.trigWait = wait;
}

if (isSeagull)
{
	randomSoundIndex = irandom(2);
	//Sets the path for the seagull object.
	objSpawn.setPath = pathSet;


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