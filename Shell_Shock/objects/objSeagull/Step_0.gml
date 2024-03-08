//Checks to see if the correct path has been started
//Would not use correct path when in Create Event
if(pathCheck == false)
{
	path_start(setPath, enemySpeed, path_action_stop, true);
	pathCheck = true;
}