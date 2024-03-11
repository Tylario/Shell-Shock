gravity_direction = 270;
gravity = .25

image_index = 0
frame = 0;
moving = false;
dancing = false
isInSandpit = false;

shell = irandom_range(0,7);
shellSprite = sprShell0;
shellWalk = sprShell0Walk;
//Finnishing this later ;D ~Mathew
switch(shell)
{
	case 0:
	shellSprite = sprShell0;
	shellWalk = sprShell0Walk;
		break;
	case 1:
	shellSprite = sprShell1;
	shellWalk = sprShell1Walk
		break;
	case 2:
	shellSprite = sprShell2;
	shellWalk = sprShell2Walk
		break;
	case 3:
	shellSprite = sprShell3;
	shellWalk = sprShell3Walk
		break;
	case 4:
	shellSprite = sprShell4;
	shellWalk = sprShell4Walk
		break;
	case 5:
	shellSprite = sprShell5;
	shellWalk = sprShell5Walk
		break;
	case 6:
	shellSprite = sprShell6;
	shellWalk = sprShell6Walk
		break;
	case 7:
	shellSprite = sprShell7;
	shellWalk = sprShell7Walk
		break;
}
randomize();