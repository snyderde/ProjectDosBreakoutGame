package
{
	import flash.display.Sprite;

	public class bricks extends Sprite
	{
		
				
		private var HP:Number; 
		
		
		public var b:ball;
		public var dead:Boolean;
		
		private var height:Number;
		private var width:Number;
		private var color:uint;
		
		
		public function bricks()
		{
			width = 50;
			height = 40;
			color = 0x990000;
			dead = false;
		}
		
		
		//create block
		public function create():void {
			
			this.graphics.beginFill(color);
			this.graphics.drawRect(0,0,width, height);
			this.graphics.endFill();
			
			trace("Block Created, (x,y)[" + this.x + ", " + this.y + "], HP[" + HP + "], color[" + color + "], height[" + height + "], width[" + width + "]");
		}
		
		
	
		public function createWithColor(colorIn):void {
			color = colorIn;
			create();
		}
		
		//  setter to make color
		public function setColor(colorIn:uint):void {
			color = colorIn;
		}
		
		// setter to make color
		public function setHP(hpIn:Number):void {
			HP = hpIn;
		}
		
		//  getter function dead
		public function isDead():Boolean
		{
			
			if (this.HP <= 0) {
				// trace("I'm dead!");
				return 1
			} else {
				// trace("I'm not dead!");
				return 0
			}
		}
		
		
		public function update(ballIn:ball):void
		{
			
			
			if (this.hitTestObject(ballIn)) {
				
				ballIn.velocity.y *= -1;
				
				trace("detected ball hitting a block");
				
				this.HP -= 1;
				
				if (this.HP <= 0) {
					dead = true;
					trace(this.parent);
					this.parent.removeChild(this); 
					trace("removing block");
				}
			}
		}
		
		
		
		
		
		
		
		
		
		
		
	}
}
