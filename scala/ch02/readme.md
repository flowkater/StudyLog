1.


SBS result >
```
	def signum_( numb:Int ) = {
		
		if( numb > 0 ) 1
		else if ( numb < 0 ) -1
		else 0
	
	};
	
	println( "120 = " + signum_( 120 ) ); 
	println( "-120 = " + signum_( -120 ) ); 
	println( "0 = " + signum_( 0 ) ); 

```

bong :

```
object Test2_1 extends App {
                  def signnum(a: Int) = {
                        var result = 0;
                    if (a > 0) {
                           result = 1;
                     } else if (a < 0) {
                          result = -1;
                     }
                       result
               }
  println(signnum(3))
  println(signnum(-2))
  println(signnum(0))	
}
```

2. 

bong : 

```
{}.getClass.getSimpleName
result  ::  String = void
```

SBS result >

```
	println( "{} : " + {} + " " +  {}.getClass );

	---> {} : () void

	** REFL 에서 실행시에는 Unit 값이며 Void 로 나온다/
	scala> var x = {};
x: Unit = ()
```


3.

SBS result > - x 의 타입이 Unit 일 경우에는 오류가 나지 않는다.

```
	scala> var x = 0;
x: Int = 0
scala> var y = 0;
y: Int = 0
scala> x = y = 1
<console>:9: error: type mismatch;
 found   : Unit
 required: Int
       x = y = 1
             ^

scala> var x:Unit = ()
x: Unit = ()
scala> var y:Int = 0;
y: Int = 0
scala> x = y = 1
x: Unit = ()
```

BONG
```
	var x:Unit = ()
	x = y = 1
```
	

4. 

SBS Result >

```
for( tmp:Int <- (0 to 10).reverse ) println( tmp );

	or

	for( tmp:Int <- 0 to 10 ) println( 10 - tmp );

```

BONG Result ->

```
  for (a <- (0 to 10).reverse) {
    println(a);
  }
```


5. 

BONG 

```
	def countdown(n: Int): Unit = {
    for (time <- (0 to n).reverse) {
      		println(time);
   	    }
 	 }
```

SBS result >

```
	def countdown( n: Int ) = {
		for( tmp:Int <- ( 0 to n ).reverse ) print( tmp +  " " );
	}
	
	countdown( 15 );
```


6. 

SBS result >

```
val hello_str = "Hello";
	var result:Long = 1;
	for( tmp <- hello_str ) result = result * tmp.toInt
	
	println( result );
```

BONG

```
 var x: Long = 1;

  	for(a<-"Hello") x *= a.toInt
  
 	 println(x);

```

MK >

```
object ex06 extends App {
def calculate(s: String) {
var result:Long = 1
for (ch <- s) result *= ch.toInt
println(result)
}   
calculate("Hello")
}   
```


7. 


SBS result > fold 함수의 구성 원리가 궁금 하다...

```
	var result2 = "Hello".foldLeft( 1L )( _ * _.toInt )
	println( result2 )
```

BONG 

```
  val a = "Hello".foldLeft(1L)(_ *_.toInt)
 	 println(a);
		
 val b = "Hello".foldRight(1L)(_.toInt *_)
  	 println(b);
```


8. 

SBS Result >

```
	def product( s: String ) = {
		s.foldLeft( 1L )( _ * _.toInt )
	}
	
	println( product( "Hello" ) )
```

bong : 

```
  def a1(s : String): Unit={
 			 val a = s.foldLeft(1L)(_ *_.toInt)
 			 println(a);   
  		}
```

9. 

SBS result >

```
	def product_recu( s: String ):Long = {
	
		if( s.length == 0 ) 1L
		else s(0).toInt * product_recu( s.slice( 1, s.length ) )
	
 }
    
   	 println( product_recu( "Hello" ) )
```

10.

SBS result >

```
def recur_exam10( n:Double, x:Double ):Double = {
    	println("exam10 : " + n + " " + x );
    	if( n == 0 ) 1L
    	else if( n > 0 ) {
    	
	    	if( n % 2 == 0 ){
			// 아래 공식은 함정인듯 함
			//recur_exam10( 2, recur_exam10( n / 2, x ) )
	    		val y = recur_exam10( n / 2, x )
	    		y * y
	    	}
	    	else{
	    		x * recur_exam10( n - 1, x )
	    	}
    	}else{
    		1 / recur_exam10( n * -1 , x ) 
    	}
    }
    
    println( "10 : " + recur_exam10( 4, 2 ) )
    println( "10 : " + recur_exam10( -1, 2 ) )
```
