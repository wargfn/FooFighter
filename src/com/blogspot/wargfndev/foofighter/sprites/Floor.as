package com.blogspot.wargfndev.foofighter.sprites 
{
	/**
	 * ...
	 * @author wargfndev
	 * Need some Pixel smacking action.
	 */
	
	import org.flixel.*;
	
	public class Floor extends FlxSprite
	{
		[Embed(source = '../../../../../../build/assets/floor.png')]
		private var imgFloor:Class;
		
		public function Floor():void
		{
			super(0, 200 - 8, imgFloor);
		}
		
		override public function update():void
		{
			//some stuff here animationtionally
		}
		
	}

}