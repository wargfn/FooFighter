package  
{
	/**
	 * ...
	 * @author wargfndev
	 * 
	 * Working On Getting Ant Build Testing Completed, Small little Hello World!! just to prove its working
	 * 
	 */
	
	import org.flixel.*; //Allows you to refer to flixel objects in your code
	[SWF(width="640", height="480", backgroundColor="#000000")] //Set the size and color of the Flash file
 
	public class FooFighter extends FlxGame
	{
		public function FooFighter()
		{
			super(320,240,PlayState,2); //Create a new FlxGame object at 320x240 with 2x pixels, then load PlayState
		}
	}
}