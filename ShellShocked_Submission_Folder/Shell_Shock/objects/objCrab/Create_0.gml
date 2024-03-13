gravity_direction = 270;
gravity = .25

image_index = 0
frame = 0;
moving = false;
dancing = false
isInSandpit = false;

shell = irandom_range(0,7);
shellSprite = sprShell0;
shellUsed = sprShell0;
shellWalk = sprShell0Walk;
shellDance = sprShell0Dance
//Finnishing this later ;D ~Mathew
switch(shell)
{
	case 0:
	shellSprite = sprShell0;
	shellWalk = sprShell0Walk;
	shellDance = sprShell0Dance
		break;
	case 1:
	shellSprite = sprShell1;
	shellWalk = sprShell1Walk
	shellDance = sprShell1Dance
		break;
	case 2:
	shellSprite = sprShell2;
	shellWalk = sprShell2Walk
	shellDance = sprShell2Dance
		break;
	case 3:
	shellSprite = sprShell3;
	shellWalk = sprShell3Walk
	shellDance = sprShell3Dance
		break;
	case 4:
	shellSprite = sprShell4;
	shellWalk = sprShell4Walk
	shellDance = sprShell4Dance
		break;
	case 5:
	shellSprite = sprShell5;
	shellWalk = sprShell5Walk
	shellDance = sprShell5Dance
		break;
	case 6:
	shellSprite = sprShell6;
	shellWalk = sprShell6Walk
	shellDance = sprShell6Dance
		break;
	case 7:
	shellSprite = sprShell7;
	shellWalk = sprShell7Walk
	shellDance = sprShell7Dance
		break;
}
randomize();