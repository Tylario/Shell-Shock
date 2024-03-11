gravity_direction = 270;
gravity = .25

image_index = 0
frame = 0;
moving = false;
dancing = false
isInSandpit = false;

shell = irandom_range(0,7);
shellSprite = sprShell0;
//Finnishing this later ;D ~Mathew
switch(shell)
{
	case 0:
	shellSprite = sprShell0;
		break;
	case 1:
	shellSprite = sprShell1;
		break;
	case 2:
	shellSprite = sprShell2;
		break;
	case 3:
	shellSprite = sprShell3;
		break;
	case 4:
	shellSprite = sprShell4;
		break;
	case 5:
	shellSprite = sprShell5;
		break;
	case 6:
	shellSprite = sprShell6;
		break;
	case 7:
	shellSprite = sprShell7;
		break;
}
randomize();