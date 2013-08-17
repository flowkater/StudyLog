1.
BONG :

```
	  def a(n : Int) =for(a <- 0 until n) yield a; 
  println(a(3));
```

SBS result >

```
	val n = 10
	val a = {
	  import java.util.Random
	  val rand = new Random(System.currentTimeMillis());
	  for( t <- 0 to n - 1 ) yield rand.nextInt( n )
	}
	
	val a2 = {
	  import scala.util.Random
	  Random.shuffle( 0 to n - 1 )
	  
	}
	
	println( a );
	println( a2 );
```

MK >

```
import util.Random
object ex01 extends App {
    def randomArray(n: Int) = {
        val result = new Array[Int](n);
        for (i <- 0 until result.size) result(i) = Random.nextInt(n);
        result
    }
    println(randomArray(10).mkString("Array(", ", ", ")"))
}
```
2. 

BONG : 
```
  var b = (1 to 5);
  var c = b.toBuffer;
  var i =0;
  var d = for(i <- 0 to c.length) yield i;

  
  for(a <- d if (a%2==0) && (a+1 != c.length)){

    val tmp = c(a);  
    c(a) = c(a+1);
    c(a+1) = tmp;
  } 
  println(c);


```

SBS result >

```
	var t2 = Array( 1, 2, 3, 4, 5 )
	for( tmp <- 1 to t2.length - 1 if tmp % 2 != 0 ){
	  val odd = t2( tmp )
	  t2( tmp ) = t2( tmp - 1 )
	  t2( tmp -1 ) = odd
	}
	
	for( tmp <- t2 ) print( tmp + " " );
	println(" " );

```

MK >

```
for(i<-0 to arr.size by 2 if i< arr.size-1) { val temp = arr(i); arr(i)=arr(i+1); arr(i+1)=temp }
```


3.

SBS result >

```
	var t3 = Array( 1,2,3,4,5 )
	
	val t3_result = 
	  for( tmp <- 0 to t3.length - 1 ) yield { 
			// 인덱스가 짝수 일때
		  if( tmp % 2 == 0 ){
			  if( t3.length -1 == tmp ) t3( tmp )		
// 짝수 번째 인대 끝났다면 현재 값으로 셋팅
			  else 			 t3(tmp + 1 )	// 다음 값
		  }else{
			  t3( tmp - 1 )	// 홀수 번째 인덱스는 무조건 앞의 값
		  }
		}
	println( t3_result.mkString(",") );
```

MK >
import scala.collection.mutable.ArrayBuffer
object ex02 extends App {
    def bubbleArray(arr: Array[Int]) = {
        for (i <- 0 until arr.length)
            yield if (i == arr.length - 1 & i % 2 == 0) arr(i) else if (i % 2 == 0) arr(i + 1) else arr(i - 1)
    }    
    val arr = Array(11, 10, 1, 20, 2, 3, 5, 9)
    println("input  = " + arr.toList)
    println("output = " + bubbleArray(arr).toList)
}

BONG : 





4. 

SBS result >

```
	val t4 = Array( 1, 4, 2, -1,2,-5,-6,7,0 );
	
	val t4_result = (for( tmp <- t4 if tmp > 0 ) yield tmp ) ++
					(for( tmp <- t4 if tmp == 0 ) yield tmp) ++
					(for( tmp <- t4 if tmp < 0 ) yield tmp );
	
	val t4_result2 = t4.filter( _ > 0 ) ++ t4.filter( _ == 0 ) ++ t4.filter( _ < 0 )
	
	println( t4.mkString( "," ) )
	println( t4_result.mkString(",") )
	println( t4_result2.mkString(",") )

```

MK >
```
object ex04 extends App {
    def sortArray(arr: Array[Int]) = {
        Array.concat(
            for (i <- arr if i > 0) yield i,
            for (i <- arr if i == 0) yield i,
            for (i <- arr if i < 0) yield i
        )    
    }    
    val a1 = Array(1,-2,3,-4,8,-7,6,10,-12,0,-1,-8)
    println(a1.toList)
    println(sortArray(a1).toList)
}
```


5. 

SBS result >

```
	val t5 = Array[Double]( 0.1, 9.2, 10.1 );
	println( "avg : " + t5.sum / t5.length );
```


6. 

SBS result >

```
	import scala.collection.mutable.ArrayBuffer;
	
	val t6 = Array[Int](4,2,3,1,2,4,8);
	val t6_buff = ArrayBuffer[Int](4,2,3,1,2,4,8);
	val t6_rev_sorted = t6.sortWith(_ > _);
	val t6_buff_rev_sorted = t6_buff.sortWith( _ > _ );
	
	println( " " + t6_rev_sorted.mkString(",") )
	println( " " + t6_buff_rev_sorted.mkString(",") )
```



7.

SBS result >

```
val t7 = Array[Int](4,2,3,1,2,4,8);
	println( t7.distinct.mkString(",") );
```
