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
			FlxG.log('Initializing MenuState');
			FlxState.bgColor = 0xFF0000AA;
			
			FlxG.log('Splash Title');
			var txt:FlxText
			txt = new FlxText((FlxG.width / 2) - 96 , (FlxG.height / 2) - 16, (FlxG.width / 2), "Foo Fighter")
			txt.setFormat(null, 16, 0xFFFFFFFF, "center");
			this.add(txt);
			FlxG.log('Painted Splash Title');	
			
			//might skip to Selctions Later
			FlxG.log('Tell Player to Push X to Start');
			var stxt:FlxText
			stxt = new FlxText((FlxG.width /2) - 96, FlxG.height - 24, FlxG.height, "Press X to Start");
			stxt.setFormat(null, 8, 0xFFFFFFFF, "center");
			this.add(stxt);
			FlxG.log('Start Message Painted');
			
			FlxG.log('Initialized MenuState');	
		}
		
		
		override public function update():void
		{
			if (FlxG.keys.pressed("X"))
			{
				FlxG.log('X Pressed');
				FlxG.flash.start(0xffffffff, 0.75);
				FlxG.fade.start(0xff000000, 1, onFade);
			}
			// LOL Way too Many Messages but just in case
			//FlxG.log('Waiting on X Press');
			
			super.update();
			
		}
		
		private function onFade():void
		{
			FlxG.log('Switching to Playstate');
			FlxG.state = new PlayState();
		}
	}

}