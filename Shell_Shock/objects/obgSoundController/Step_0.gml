if (global.music_on) {
    // Unmute
    if (audio_is_playing(snd_beach_background_noise)) {
        audio_sound_gain(snd_beach_background_noise, 1, 0); // Set volume to 100%
    } else {
        // If the music isn't playing at all, start it
        audio_play_sound(snd_beach_background_noise, 1, true);
    }
} else {
    // Mute0
    if (audio_is_playing(snd_beach_background_noise)) {
        audio_sound_gain(snd_beach_background_noise, 0, 0); // Set volume to 0%
    }
}
