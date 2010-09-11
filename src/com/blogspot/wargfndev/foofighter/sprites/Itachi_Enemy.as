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
	
	public class Itachi_Enemy extends FlxSprite
	{
		[Embed(source = '../../../../../../build/assets/itachi_sheet.png')]
		public var _Itachi:Class;
		private var _move_speed:int = 400;
		private var _jump_power:int = 800;
		private var _max_health:int = 100;
		private var _hurt_counter:Number = 0;
		private var _attack_indicator:Number = 0;
		public var counter:Number = 0;
		
		
		public function Itachi_Enemy(X:Number, Y:Number):void
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
			addAnimation("idle", [4, 6, 7], 3);
			addAnimation("bored", [5, 6, 7, 8, 7, 6, 5], 7);
			addAnimation("duck", [5, 9, 10], 3);
			addAnimation("walk", [12, 13, 14, 15, 16, 17], 6);
			addAnimation("run", [18, 19, 20, 21, 22, 23], 6);
			addAnimation("jump", [5, 24, 25, 26, 27], 6);
			addAnimation("punch", [28, 28, 29, 29, 30, 30, 30, 31, 31], 8);
			addAnimation("kick", [32, 33, 34, 34, 35, 35, 35, 35, 36, 36], 10);
			addAnimation("spca", [37, 38, 39, 40, 41, 42, 43], 7);
			addAnimation("spcb", [44, 45, 46, 47, 48, 49, 50], 7);
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
			
			//Add AI Element here
			
			
			
			//Old Movement Elements Here
			/*if (FlxG.keys.LEFT)
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
			else if (FlxG.keys.justPressed("UP") && velocity.y == 0)
			{
				velocity.y = -_jump_power;
			}
			
			//Test more Animations PLEASE
			else if (FlxG.keys.pressed("DOWN"))
			{
				play("duck");
				_attack_indicator = 5;
			}
			else if (FlxG.keys.pressed("Z"))
			{
				play("punch");
				_attack_indicator = 1;
			}
			
			else if (FlxG.keys.pressed("X"))
			{
				play("kick");
				_attack_indicator = 2;
			}
			
			else if (FlxG.keys.pressed("C"))
			{
				play("spca");
				_attack_indicator = 3;
			}
			
			else if (FlxG.keys.pressed("V"))
			{
				play("spcb");
				_attack_indicator = 4;
			}
			*/
			//counter to return to idle
			/*counter += FlxG.elapsed;
				if ( counter >= 1.5 )
				{
				_attack_indicator = 0;
				counter = 0;
				}
			*/
				
			//Attack Indicator to log file
			//FlxG.log('Attack Indicator = '+_attack_indicator);
			
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
						if (_attack_indicator == 1)
							{
								play("punch");
								counter += FlxG.elapsed;
								if ( counter >= 1 )
									{
									_attack_indicator = 0;
									counter = 0;
									}
							}	
						else if (_attack_indicator == 2)
							{
								play("kick");
								counter += FlxG.elapsed;
								if ( counter >= 1 )
									{
										_attack_indicator = 0;
										counter = 0;
									}
							}
						else if (_attack_indicator == 3)
							{
								play("spca");
								counter += FlxG.elapsed;
								if ( counter >= 1 )
									{
										_attack_indicator = 0;
										counter = 0;
									}
							}
						else if (_attack_indicator == 4)
							{
								play("spcb");
								counter += FlxG.elapsed;
								if ( counter >= 1 )
									{
										_attack_indicator = 0;
										counter = 0;
									}
							}
						else if (_attack_indicator == 5)
							{
								play("duck");
								counter += FlxG.elapsed;
								if ( counter >= 1 )
									{
										_attack_indicator = 0;
										counter = 0;
									}
							}			
						else if (velocity.x > 75)
							{
								play("run");
							}
						else if (velocity.x > 0)
							{
								play("walk");
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