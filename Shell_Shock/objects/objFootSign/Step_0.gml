if (isColliding) {
    frameCounter += 1;
    if (frameCounter >= framesPerSpriteFrame && currentFrame < lastFrame) {
        currentFrame += 1;
        frameCounter = 0;
    }
} else {
    currentFrame = 0;
    frameCounter = 0;
}

image_index = currentFrame;
image_speed = 0;
