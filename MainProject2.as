package
{
	import flash.display.Sprite;
	import flash.events.Event;
	public class MainProject2 extends Sprite
	{
		public var p:paddle = new paddle();
		public var b:ball = new ball(1)
		
		public function MainProject2()
		{
			this.addEventListener(Event.ENTER_FRAME, onE);			
			this.addChild(b);
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
			private function onE(e:Event):void {
				
				//make sure paddle exists
				if(this.b) {
					if( this.b.hitTestObject(this.p) ) {
						this.b.velocity.y *= -1;
					}	
				}
					
		}
		
	}
}
