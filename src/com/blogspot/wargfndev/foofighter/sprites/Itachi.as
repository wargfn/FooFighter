package com.blogspot.wargfndev.foofighter.sprites 
{
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author wargfndev
	 * First Fighter is Itachi
	 * Needs Sprite sheet
	 * Add Animations as needed.
	 */
	import org.flixel.*;
	
	public class Itachi extends FlxSprite
	{
		[Embed(source = '../../../../../../build/assets/itachi_sheet.png')]
		public var _Itachi:Class;
		private var _move_speed:int = 400;
		private var _jump_power:int = 800;
		private var _max_health:int = 100;
		private var _hurt_counter:Number = 0;
		
		public function Itachi(X:Number, Y:Number):void
		{
			trace('Player Itachi Initizalizing');
			super(X, Y);
			loadGraphic(_Itachi, true, true, 64, 64);
			maxVelocity.x = 200;
			maxVelocity.y = 200;
			
			//set player health
			health = 100;
			
			//Gravity
			acceleration.y = 420;
			
			//Fricition
			drag.x = 300;
			
			//bounding box tweeks
			//Will NEEED tweaking
			width = 32;
			height = 60;
			offset.x = 4;
			offset.y = 2;
			
			//Animation time, and let me tell you something....
			//starting animations, woot
			addAnimation("portrait", [0, 1, 2, 3, 4], 25);
			addAnimation("idle", [5, 6, 7], 10);
			addAnimation("bored", [5, 6, 7, 8, 7, 6, 5], 20);
			addAnimation("duck", [5, 9, 10], 10);
			addAnimation("walk", [12, 13, 14, 15, 16, 17], 15);
			addAnimation("run", [18, 19, 20, 21, 22, 23], 10);
			addAnimation("jump", [5, 24, 25, 26, 27], 10);
			addAnimation("punch", [28, 29, 30, 31], 10);
			addAnimation("kick", [32, 33, 34, 35, 36], 10);
			addAnimation("spca", [37, 38, 39, 40, 41, 42, 43], 10);
			addAnimation("spcb", [44, 45, 46, 47, 48, 49, 50], 10);
			addAnimation("hit", [51, 51, 51, 52], 10);
			addAnimation("dead", [51, 51, 52, 52, 53, 53, 54, 55], 10);
			
		}
		
		
		override public function update():void
		{
			
			if (dead)
			{
				if (finished) exists = false;
				else
					super.update();
				return;
			}
			
			if (_hurt_counter > 0)
			{
				_hurt_counter -= FlxG.elapsed * 3;
			
			}
			
			if (FlxG.keys.LEFT)
			{
				facing = LEFT;
				velocity.x -= _move_speed * FlxG.elapsed;
			}
			else if (FlxG.keys.RIGHT)
			{
				facing = RIGHT;
				velocity.x += _move_speed * FlxG.elapsed;
			}
			
			//Jumping
			if (FlxG.keys.justPressed("UP") && velocity.y == 0)
			{
				velocity.y = -_jump_power;
			}
			
			//Test more Animations PLEASE
			if (FlxG.keys.justPressed("DOWN")
			{
				play("duck");
			}
			
			if (FlxG.keys.justPressed("Z")
			{
				play("punch");
			}
			
			if (FlxG.keys.justPressed("X")
			{
				play("kick");
			}
			
			if (FlxG.keys.justPressed("C")
			{
				play("spca");
			}
			
			if (FlxG.keys.justPressed("V")
			{
				play("spcb");
			}
			
			//Play Some ANIMATIONS PLEASE
			if (_hurt_counter > 0)
			{
				play("hit");
			}
			else
			{
				if (velocity.y != 0)
				{
					play("jump");
				}
				else
				{
					if (velocity.x > 75)
					{
						play("run");
					}
					else if (velocity.x > 0)
					{
						play("walking");
					}
					else
					{
						play("idle");
					}
				}
			}
			
			
			super.update();
		}
		
		override public function hurt(Damage:Number):void
		{
			_hurt_counter = 1;
			return super.hurt(Damage);
		}
		
		
	}
}