
instance_destroy(other)

punDecider = irandom(4)
switch(punDecider)
{
	case 0: 
		objDebugCheats.DeathPun = "Yummy!"
		break;
	case 1:
		objDebugCheats.DeathPun = "Should have sea that coming!"
		break;
	case 2:
		objDebugCheats.DeathPun = "Don't be out in the open!"
		break;
	case 3:
	//Gotta add some sass :)
		objDebugCheats.DeathPun = "What did you think would happen, holding forward like that?";
		break;
}
