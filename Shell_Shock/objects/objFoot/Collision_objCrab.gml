/// @description Insert description here
// You can write your code in this editor

instance_destroy(other)

punDecider = irandom(4)
switch(punDecider)
{
	case 0: 
		objDebugCheats.DeathPun = "Get Stepped on!"
		break;
	case 1:
		objDebugCheats.DeathPun = "Should have worn shoes!"
		break;
	case 2:
		objDebugCheats.DeathPun = "New toe jam?"
		break;
	case 3:
		objDebugCheats.DeathPun = "Always One Step... uhhh... above";
		break;
}