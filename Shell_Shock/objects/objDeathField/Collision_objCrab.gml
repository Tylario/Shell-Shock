punDecider = irandom(4)
switch(punDecider)
{
	case 0: 
		objDebugCheats.DeathPun = "Wooahoahoah oah oooooh oh oh oh ohhhh oh oh oh\n Story of Undertale"
		break;
	case 1:
		objDebugCheats.DeathPun = "I think I see the other side!"
		break;
	case 2:
		objDebugCheats.DeathPun = "This beach is DEFINATELY not OSHA approved."
		break;
	case 3:
	//Gotta add some sass :)
		objDebugCheats.DeathPun = "So that's where little Jimmy Went!";
		break;
}
instance_destroy(other);