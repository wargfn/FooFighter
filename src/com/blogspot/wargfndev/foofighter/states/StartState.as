package com.blogspot.wargfndev.foofighter.states 
//com.blogspot.wargfndev.foofighter.states
{
	/**
	 * ...
	 * @author wargfndev
	 * Wanted To import all of the game assets and sprites at ONE TIME...
	 * 	 
	 */
	import com.blogspot.wargfndev.foofighter.sprites.GameAssets;
	import flash.events.MouseEvent;
	
	//need FlxG, FlxSprite, FlxState, and FlxText for sure.
	import org.flixel.*;
	
	 
	 public class StartState extends FlxState
	{
		
		//first state Seen is Start STATE!!
		public function StartState() 
		{
			super();
		}
		
	}/**
         * Goes through and creates the graphics needed to display the start message
         */
        override public function create():void
        {
            var sprite:FlxSprite = new FlxSprite();
            sprite.createGraphic(FlxG.width, FlxG.height / 2, 0xff000047);
            add(sprite);

            stage.addEventListener(MouseEvent.CLICK, onClick);

            //var title:FlxSprite = new FlxSprite(0, 100, GameAssets.TitleSprite);
            //title.x = (FlxG.width * .5) - (title.width * .5);
            //add(title);

            add(new FlxText(0, 200, FlxG.width, "PUSH").setFormat(null, 18, 0xffffffff, "center"));
            add(new FlxText(0, 300, FlxG.width, "ANYWHERE TO START").setFormat(null, 18, 0xd33bd1, "center"));

            //TODO Add possible watch animating across the screen
            //TODO Add rules for score to the botton

        }

        /**
         * Handles when the user clicks and changes to the PlayState.
         * @param event MouseEvent
         */
        private function onClick(event:MouseEvent):void
        {

            FlxG.state = new PlayState();

            // Sound is played after the state switch to keep it from being destroyed
            //FlxG.play(GameAssets.FroggerThemeSound);

        }

        // This removed the click listener.
        override public function destroy():void
        {
            stage.removeEventListener(MouseEvent.CLICK, onClick);
            super.destroy();
        }

    }
}