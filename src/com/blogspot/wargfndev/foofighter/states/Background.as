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
	public class Background extends FlxSprite
	{
		// First Background Forest01
		[Embed(source = '../../../../../../build/assets/Forest01.png')]
		public var Forest01:Class;
		public var _bg:Class;
		
		
		public function Background(_bg: Number):void
		{
			trace('Preparing to Load Background');
			super(0, 0, Forest01);
			trace('Background Painted');
			
		}
		
		override public function update():void
		{
			//holding an update from layered Backgrounds
			
			super.update();
		}
		
	}

}