if (touchingCrab) {
    frameCounter -= 1; 
    
    if (frameCounter <= 0) {
        if (otherCounter < lastFrame - 1) {
            image_index += 1; 
			otherCounter += 1;
			show_debug_message(image_index)
        } else {
			
            show_debug_message("KILL CRAB")
			var crabInstance = instance_find(objCrab, 0);
            if (crabInstance != noone) { // Check if objCrab instance exists
                with (crabInstance) {
                    instance_destroy(); // Destroy the found instance of objCrab
                }
            }
        }
        
        frameCounter = framesPerSandFrame;
    }
} else {
    image_index = 0; // Reset to the first frame if not touching the crab
    frameCounter = framesPerSandFrame; // Reset the frame counter
}
