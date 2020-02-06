draw_self();
if(position_meeting(mouse_x,mouse_y,self))
{
	if(image_xscale<1.15)
	{
		image_xscale+=.01;
		image_yscale+=.01;
	}
}

else
{
	if(image_xscale>=1)
	{
		image_xscale-=.01;
		image_yscale-=.01;
	}
		image_alpha = 1;
}