var randomSoundIndex = irandom(2);
switch(randomSoundIndex) 
{
   case 0:
       audio_play_sound(snd_sand_step_or_stab_1, 1, false);
       break;
   case 1:
       audio_play_sound(snd_sand_step_or_stab_2, 1, false);
       break;
   case 2:
       audio_play_sound(snd_sand_step_or_stab_3, 1, false);
       break;
}