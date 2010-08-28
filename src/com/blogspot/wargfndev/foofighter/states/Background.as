package com.blogspot.wargfndev.foofighter.states 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author wargfndev
	 * 
	 * State to Pick the Backgrounds, either specified or random
	 * 
	 */
	public class Background extends FlxState
	{
		// First Background Forest01
		[Embed(source = '../../../../../../build/assets/Forest01.png')]
		
		
		public function Background():void
		{
			trace('Preparing to Load Background');
			
			trace('Background Painted');
			
		}
		
	}

}