package com.blogspot.wargfndev.foofighter.states 
{
	/**
	 * ...
	 * @author wargfndev
	 * My Main MenuState - Select Single, Multi, High Scores, ALso Returns from MENU State
	 */
	import flash.text.Font;
	import org.flixel.*;
	
	//My New Font, instead of Default
	 	
	public class MenuState extends FlxState
	{
		[Embed(source="../../../../../../build/assets/mangat.ttf", fontName = "Mangat", fontWeight = "normal", advancedAntiAliasing = "true", mimeType = "application/x-font-truetype", embedAsCFF = "false")] 
		private var Mangat:String;
		
		[Embed(source = '../../../../../../build/assets/emulogic.ttf', fontFamily = "NES")]
		public	var	FontNES:String;
		
		
		override public function MenuState():void 
		{
			trace('Initializing MenuState');
			FlxState.bgColor = 0xFF0000AA;
			
			trace('Splash Title');
			var txt:FlxText
			txt = new FlxText((FlxG.width / 2) - 192, (FlxG.height / 2) - 35, (FlxG.width / 2), "Foo Fighter")
			txt.setFormat(null, 36, 0xFFFFFFFF, "center");
			this.add(txt);
			trace('Painted Splash Title');	
			
			//might skip to Selctions Later
			trace('Tell Player to Push X to Start');
			var stxt:FlxText
			stxt = new FlxText((FlxG.width /2) - 192, FlxG.height - 48, FlxG.height, "Press X to Start");
			stxt.setFormat(null, 8, 0xFFFFFFFF, "center");
			this.add(stxt);
			trace('Start Message Painted');
			
			trace('Initialized MenuState');	
		}
		
		
		override public function update():void
		{
			if (FlxG.keys.pressed("X"))
			{
				trace('X Pressed');
				FlxG.flash.start(0xffffffff, 0.75);
				FlxG.fade.start(0xff000000, 1, onFade);
			}
			// LOL Way too Many Messages but just in case
			//trace('Waiting on X Press');
			
			super.update();
			
		}
		
		private function onFade():void
		{
			trace('Switching to Playstate');
			FlxG.state = new PlayState();
		}
	}

}