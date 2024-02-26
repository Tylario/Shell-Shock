if (hitGround)
{
timeUntilMoveUp = timeUntilMoveUp - 1;
}

if (timeUntilMoveUp == 0)
{
	speed = 0;
	direction = 90;
	speed = enemySpeed;
}
