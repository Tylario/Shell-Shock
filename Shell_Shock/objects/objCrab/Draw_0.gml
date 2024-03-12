if(dancing && shellUsed == sprShell7Dance)
{
	draw_sprite_ext(shellUsed,-1,x,y,1,1,0,c_white,1);
}
else
{
	draw_sprite_ext(shellUsed,-1,x,y,objCrab.image_xscale,1,0,c_white,1);
}
draw_self();