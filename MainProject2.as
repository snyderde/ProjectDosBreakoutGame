package
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class MainProject2 extends Sprite
	{
		public var p:paddle = new paddle();
		public var b:ball = new ball(1)
			
		public var redBlocks:Array = new Array(); 
		public var blueBlocks:Array = new Array(); 
		public var greenBlocks:Array = new Array();
		
		
		public var numBlocks:Number = 7;
		public var blockSpace:Number = 60;
		public var rowSpace:Number = 30;
		
		public function MainProject2()
		{
			this.addEventListener(Event.ENTER_FRAME, onE);			
			this.addChild(b);
			this.addChild(p);
			
			for(var i:Number = numBlocks; i > 0; i--) {
				var redblock:bricks = new bricks();
				
				redblock.setColor(0x9900000);
				redblock.setHP(3);
				
				
				redblock.x =  i * blockSpace - 1;
				redblock.y = rowSpace;
				
				redblock.create();
				
				
				redBlocks.push(redblock);
				
				this.addChild(redblock);	
			}
			
			
			var length:Number;
			length = redBlocks.length;
			trace("array is [" + length + "]");
			
			
			for(var h:Number = numBlocks; h > 0; h--) {
				var blueblock:bricks = new bricks();
				
				blueblock.setColor(0x000099);
				blueblock.setHP(2);
				
				blueblock.x =  h * blockSpace - 1;
				blueblock.y = rowSpace * 3;
				
				blueblock.create();
				
				blueBlocks.push(blueblock);
				
				this.addChild(blueblock);
				
			}
			
			length:Number;
			length = blueBlocks.length;
			trace("array is [" + length + "]");
			
			
			for(var j:Number = numBlocks; j > 0; j--) {
				var greenblock:bricks = new bricks();
				
				greenblock.setColor(0x009900);
				greenblock.setHP(1);
				
				greenblock.x =  j * blockSpace - 1;
				greenblock.y = rowSpace * 5;
				
				greenblock.create();
				
				greenBlocks.push(greenblock);
				
				this.addChild(greenblock);
				
			}
			
		  
			stage.addEventListener(Event.ENTER_FRAME, checkForDead)
				
			
		}
		
		private function onE(e:Event):void {
			//make sure paddle exists
			if (this.b) {
				if(this.b.hitTestObject(this.p)) {
					this.b.velocity.y *= -1;
				}
			}
		}
		
		
		public function checkForDead(e:Event):void {
			
			
			
			var deadCount:Number = 0;
			var blockCount:Number = redBlocks.length;
			
			trace("blockCount: " + blockCount);
			
			for(var i:Number = 0; i < blockCount; i++) {
				
				var test:Boolean = redBlocks[i].isDead();
				
				if (test == 1) {
					deadCount++;
				}
				
				var test:Boolean = blueBlocks[i].isDead();
				
				if (test == 1) {
					deadCount++;	
				}
				
				var test:Boolean = greenBlocks[i].isDead();
				
				if (test == 1) {
					deadCount++;	
				}
			}
			
			trace("Number of deadBlocks = " + deadCount);
			
			for(var i:Number = 0; i < blockCount; i++) {
				if(redBlocks[i].dead == false) {
					redBlocks[i].update(b);
				}
				if(blueBlocks[i].dead == false) {
					blueBlocks[i].update(b);
				}
				if(greenBlocks[i].dead == false) {
					greenBlocks[i].update(b);
				}
			}
			
		}
	}
}



