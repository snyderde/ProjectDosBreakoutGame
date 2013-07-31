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
			
		
			for(var i:Number = 6; i >= 0; i--) {
				for(var h:Number = 0; h < i + 1; h++) {
					
					var br:bricks = new bricks();
					br.x = 50 + (i-brickRow*7)*50;
					
					br.y = 10 + brickRow*20;
					
					this.addChild(br);
				}
			}
			
			
			
			
			
		}
	}
}
