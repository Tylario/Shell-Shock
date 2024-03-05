/// @description Insert description here
// You can write your code in this editor
objDeathCounter.deaths += 1;
room_goto(roomDeathMenu);

var soundIndex = irandom(2);

switch(soundIndex) {
    case 0:
        audio_play_sound(snd_crab_crunch_1, 1, false);
        break;
    case 1:
        audio_play_sound(snd_crab_crunch_2, 1, false);
        break;
    case 2:
        audio_play_sound(snd_crab_crunch_3, 1, false);
        break;
}