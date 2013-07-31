//this is for the MainProject2.as


package
{
	import flash.display.Sprite;
	
	public class MainProject2 extends Sprite
	{
		private var brickRow:int;
		private var brickRow2:int;
		public function MainProject2()
		{
			var b:ball = new ball(1);
			this.addChild(b);
			
			var p:paddle = new paddle();
			this.addChild(p);
			
			var brickRow:int=0;
			var brickCol:int=0;
		
			for(var i:Number = 3; i >= 0; i--) {
				for(var h:Number = 6; h >= 0; h--) {
					
					var br:bricks = new bricks();
					br.x = 50 * brickCol;
					
					br.y = 30 * brickRow;
					
					this.addChild(br);
					
					brickCol++;
				}
				brickRow++;
				brickCol=0
			}
			
			
			
			
			
		}
	}
}
