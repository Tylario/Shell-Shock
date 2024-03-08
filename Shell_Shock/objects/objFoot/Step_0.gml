if (hitGround)
{
timeUntilMoveUp = timeUntilMoveUp - 1;
alarm[0] = 200;
}

if (timeUntilMoveUp == 0)
{
	speed = 0;
	direction = 90;
	speed = enemySpeed;
}
