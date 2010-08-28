package  
{
	/**
	 * ...
	 * @author wargfndev
	 * Preloader to speed up game processing
	 */
	
	import org.flixel.*;
	
	 public class Preloader extends FlxPreloader
	{
		
		public function Preloader() 
		{
				className = "FooFighter";
				trace('Beginning Preloader');
				super();
				trace('DONE with Preloading');
				//Might want to consider a Nice Little LOADING style app
		}
		
	}

}