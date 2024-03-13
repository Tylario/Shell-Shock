hasCollidedWithCrab = true
for(i = 0; i < 8; i++)
{
	tempSand = instance_create_layer(x+(irandom_range(-5,5)),y - 60,"Instances",objSandDest);
	
	tempSand.hSpd = (4-i)/4;
}
instance_destroy();