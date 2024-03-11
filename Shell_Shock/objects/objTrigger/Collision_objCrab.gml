// Create an instance on the "Instances" layer
objSpawn = instance_create_layer(objectX, objectY, "Instances", spawnObject);

// Check if the spawned object is of a certain type
if(objSpawn.object_index == objUmbrellaDynamic)
{
    objSpawn.trigWait = wait;
}

// Additional logic for seagull objects
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

// Adjust the depth of the spawned instance to make it appear behind other instances on the same layer
objSpawn.depth = layer_get_depth("Instances") + 100; // Increase depth to push behind others on the same layer

// Destroy the creator instance
instance_destroy();
