1. java.awt.Rectangle 클래스는 유용한 메소드 translate와 grow 메소드를 갖고 있는데, java.awt.geom.Ellipse2D에는 불행히도 빠져 있다. 스칼라에서는 이 문제를 수정할 수 있다. 구체 메소드 translate와 grow가 있는 RectangleLike 트레이트를 정의하라. 다음과 같이 트레이트를 믹스인할 수 있게 구현에 필요한 추상 메소드를 제공 하라.

  val egg = new java.awt.geom.Ellipse2D.Double(5, 10, 20, 30) with RectangleLike
 egg.translate(10,-10);
 egg.grow(10,20);


solute SBS ) -- 1번 문제는 쉬울거다라는 가정을 하고 푼 해법입니다.
```
   trait RectangleLike extends java.awt.geom.Ellipse2D.Double {
  	def translate( x:Int , y:Int )={
			// Ellipse2D 에 상응 하는 translate 를 구현 할 수 있도록 한다.
this.x += x;
this.y += y;	
		}
		def grow( width:Int, height:Int) = {
			// Ellipse2D 에 상응 하는 grow 를 구현 할 수 있도록 한다.	
			this.width += width;
			this.height += height;
		}
	}

  
  val egg = new java.awt.geom.Ellipse2D.Double(5, 10, 20, 30) with RectangleLike
  egg.translate(10,-10);
  egg.grow(10,20);
```


solute Peter )
```
val egg = new java.awt.geom.Ellipse2D.Double(5, 10, 20, 30) with RectangleLike
egg.translate(10, -10)
egg.grow(10, 20)]

object Main extends App {
  trait RectangleLike extends java.awt.geom.Ellipse2D.Double {
   
    def translate(x: Int, y: Int) {
      this.x += x
      this.y += y
    }
   
    def grow(width: Int, height: Int) {
      this.width += width
      this.height += height
    }
  }
 
  val egg = new
    java.awt.geom.Ellipse2D.Double(5, 10, 20, 30) with RectangleLike
      egg.translate(10, -10)
      egg.grow(10, 20)
     
  println(egg.getX())
  println(egg.getY())
  println(egg.getWidth())
  println(egg.getHeight())
}
```

solute Minki )
```
(https://github.com/calinburloiu/Scala-for-the-Impatient--Exercises/tree/master/src/exercises)
import java.awt.geom.RectangularShape

trait RectangleLike {
  this: RectangularShape =>
  
  def translate(dx: Double, dy: Double) {
    setFrame(getX + dx, getY + dy, getWidth, getHeight)
  }
  
  def grow(h: Double, v: Double) {
    setFrame(getX, getY, getWidth + h, getHeight + v)
  }
}

object RectangleLikeTest extends App {
  val egg = new java.awt.geom.Ellipse2D.Double(5, 10, 20, 30) with RectangleLike
  egg.translate(.1, .2)
  egg.grow(.3, .4)
  println("%f %f %f %f".format(egg.getX, egg.getY, egg.getWidth, egg.getHeight))
}
```


--------------------------------------------------------------------------------------------------------------------
2.

solute SBS )
  class OrderedPoint( n:java.awt.Point ) extends scala.math.Ordered[OrderedPoint] {
    def compare(that: OrderedPoint) = {
    	(n.x * 1024 + n.y ) - ( that.n.x * 1024 + that.n.y )
    }
  }
  
  val x = Array( new OrderedPoint(new java.awt.Point(1, 20)),
		  		 new OrderedPoint(new java.awt.Point(1, 30)),
		  		  new OrderedPoint(new java.awt.Point(0, 20)) )	
  
  scala.util.Sorting.quickSort( x )
  
  for( tt <- x ){
	  println( " "  + tt )
  }
	

--------------------------------------------------------------------------------------------------------------------
3.



--------------------------------------------------------------------------------------------------------------------
4.

solute SBS )

```
  trait Logger {
    def log( msg: String ){}
  }
  
  trait ConsoleLogger extends Logger{
    abstract override def log( msg: String ){
      println( msg );
      super.log( msg );
    }
  }
  
  trait CryptLogger extends Logger {
    val crypt_key:Int = 3;
    abstract override def log( msg: String ){
      
      val cur_crypt_key = crypt_key;
      val result = for( elem <- msg ) yield ( elem + cur_crypt_key ).toChar
      
      super.log( "is crypt : " + result );
    }
  }
  
  class sample_class( header:String ) extends Logger {
    def run(){
    	println( header );
    	log ("SBS" );
    }
  }
  
  val ttt_def = new  sample_class( "crypt key is Default " ) with ConsoleLogger with CryptLogger;
  ttt_def.run();
  
  val ttt = new { override val crypt_key:Int = 5 } with  sample_class( "crypt key is 5 " ) with ConsoleLogger with CryptLogger;
  ttt.run();
```


--------------------------------------------------------------------------------------------------------------------
5.

solute SBS )

```
trait PropertyChangeSupport_ext {
    val pcs:java.beans.PropertyChangeSupport = new java.beans.PropertyChangeSupport ();
    
    def addPropertyChangeListener( listener: java.beans.PropertyChangeListener ) {
         this.pcs.addPropertyChangeListener(listener);
     }
    
    def firePropertyChange( id:String, oldvalue:String, newvalue:String ){
      this.pcs.firePropertyChange( id, oldvalue, newvalue );
    }
    
  }
  
  class PointWithPCS extends Point with PropertyChangeSupport_ext {
    override def setLocation( x:Int, y:Int ){
      val old_x:String = "" + x;
      super.setLocation( x, y);
      firePropertyChange( "x", old_x, "" + x );
    }
  }
  
  val point_test = new PointWithPCS;
  point_test.setLocation(10, 20);
```

--------------------------------------------------------------------------------------------------------------------
6.
--------------------------------------------------------------------------------------------------------------------
7.
--------------------------------------------------------------------------------------------------------------------
8.
--------------------------------------------------------------------------------------------------------------------
9.
--------------------------------------------------------------------------------------------------------------------
10.
--------------------------------------------------------------------------------------------------------------------








