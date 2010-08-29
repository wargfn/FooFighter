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
		
		[Embed(source = '../../../../../../build/assets/Bamboo.png')]
		public var Bamboo:Class;
		
		public var _bkg:Class;
		public var _map:FlxTilemap;
		
		
		public function Background(_bg: Number):void
		{
			trace('Preparing to Load Background');
			if (_bg >= 75)
			{
				_bkg = Forest01;
			}
			else if (_bg < 75 && _bg >= 50)
			{
				_bkg = Bamboo;
			}
			else if (_bg < 50 && _bg >= 25)
			{
				_bkg = Bamboo;
			}
			else
			{
				_bkg = Forest01;
			}
			
			super(0, 0);
			loadGraphic(_bkg, false, false, 400, 200);
			trace('Background Painted');
			
		}
		
		override public function update():void
		{
			//holding an update from layered Backgrounds
		
			super.update();
		}
		
	}

}