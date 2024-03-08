
punDecider = irandom(4)
switch(punDecider)
{
	case 0: 
		objDebugCheats.DeathPun = "Did you REALLY just jump of the cliff\n at the VERY end?"
		break;
	case 1:
		objDebugCheats.DeathPun = "...You did it because of the Bucket,\n Didn't you?"
		break;
	case 2:
		objDebugCheats.DeathPun = "Congratulations! You found the secret ending!...\n...Not."
		break;
	case 3:

		objDebugCheats.DeathPun = "*frustrated Level Designer Noises*";
		break;
}
instance_destroy(other);