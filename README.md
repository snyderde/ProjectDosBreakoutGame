ProjectDosBreakoutGame
======================

breakout game


I am trying to make 3 rows of bricks that have a hit test that delegates that the bricks in the first row disappear
when they are hit once
and the second row of bricks get hit twice and disappear and the third row of bricks disappear after getting hit 
three times.

the ball must bounce off the paddle which is controlled by the left and right arrow keys.



  private function onE(e:Event):void {

//make sure paddle exists
if(this.b) {
//check to see if we are hitting paddle
if( this.b.hitTestObject(this.p) ) {
//txtFeedback.text = "they are hitting";
this.velocity *= -1;
}	
}
