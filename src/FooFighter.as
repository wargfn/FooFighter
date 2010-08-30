/*
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package  
{
	/**
	 * ...
	 * @author wargfndev
	 * 
	 * Working On Getting Ant Build Testing Completed, Small little Hello World!! just to prove its working
	 * 
	 */
	
	//followed template
	import com.blogspot.wargfndev.foofighter.states.StartState;
	import com.blogspot.wargfndev.foofighter.states.Background;
	import com.blogspot.wargfndev.foofighter.states.MenuState;
	import org.flixel.*; //Allows you to refer to flixel objects in your code
	
	//Motorola Droid Default screen size is 480x 854 3.7" screen 16:9 aspect raitio
	[SWF(width="800", height="400", backgroundColor="#000000")] //Set the size and color of the Flash file
	[frame(factoryClass = "Preloader")]
	
	public class FooFighter extends FlxGame
	{
		//Main Game start GO FOOFIGHTER
		public function FooFighter():void
		{
			//Changed to StartState to Menu once going
			trace('Initailzing Game Window');
			super(400, 200, MenuState, 2); //Create a new FlxGame object at 800x320 no zoom, then load StartState
			help("Jump", "Shoot", "Nothing");
			userDefaultVolueControls(true);
			trace('Initailized Game Window');
		}
	}
}