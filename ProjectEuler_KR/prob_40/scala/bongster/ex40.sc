package test

object ex40 {
  println("어떤 무리수에서 소수점 n 번째자리 숫자 알아내기")          //> �대뼡 臾대━�섏뿉���뚯닔��n 踰덉㎏�먮━ �レ옄 �뚯븘�닿린
	
	
	def from(n: Int): Stream[Int] = n #:: from(n + 1)
                                                  //> from: (n: Int)Stream[Int]
	
	val g = from(1) flatMap(f => (f.toString))//> g  : scala.collection.immutable.Stream[Char] = Stream(1, ?)
	
	def result(n: Int,r: Int = 1): Int = {
	if(n >= 0) {
		val num: String = "1" + "0" * n;
		result(n -1, r * g(num.toInt -1).toString.toInt)
		} else r
	}                                         //> result: (n: Int, r: Int)Int
	
	result(6)                                 //> res0: Int = 210
	
}