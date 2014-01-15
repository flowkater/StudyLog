package test

object ex37 {
  println("ex37. 왼쪽이나 오르쪽에서 한자리씩 없애가도 여전히 소수인 수의 합은?")
                                                  //> ex37. �쇱そ�대굹 �ㅻⅤ履쎌뿉���쒖옄由ъ뵫 �놁븷媛�룄 �ъ쟾���뚯닔
                                                  //| ���섏쓽 �⑹�?

  def from(n: Int): Stream[Int] = n #:: from(n + 1)
                                                  //> from: (n: Int)Stream[Int]
  val nats = from(1) map (_ * 4)                  //> nats  : scala.collection.immutable.Stream[Int] = Stream(4, ?)
  nats take 5 foreach println                     //> 4
                                                  //| 8
                                                  //| 12
                                                  //| 16
                                                  //| 20

  def check2(n: Int): Boolean = {
    def check1(n: Int, r: Boolean = false): Boolean = {
      //println(n)
      var result = true
      if (n == 1) result = false
      else for (x <- (2 until n)) if (n % x == 0) result = false

      if (result && n.toString.tail.length > 0) check1(n.toString.tail.toInt, result) else result
    }
    if (n < 8)
      false
    else {
      check1(n)
    }
  }                                               //> check2: (n: Int)Boolean

  def check4(n: Int): Boolean = {

    def check3(n: Int, r: Boolean = false): Boolean = {
      //println(n)
      var result = true
      if (n == 1) result = false
      else for (x <- (2 until n)) if (n % x == 0) result = false

      if (result && n.toString.length > 1) check3(n.toString.take(n.toString.length - 1).toInt, result) else result
    }
    if (n < 8)
      false
    else {
      check3(n)
    }
  }                                               //> check4: (n: Int)Boolean

    def check(n: Int): Boolean = {
      def rightCheck(n: Int, r: Boolean = false): Boolean = {
        //println(n)
        var result = true
        if (n == 1) result = false
        else for (x <- (2 until n)) if (n % x == 0) result = false

        if (result && n.toString.tail.length > 0) rightCheck(n.toString.tail.toInt, result) else result
      }

      def leftCheck(n: Int, r: Boolean = false): Boolean = {
        //println(n)
        var result = true
        if (n == 1) result = false
        else for (x <- (2 until n)) if (n % x == 0) result = false

        if (result && n.toString.length > 1) leftCheck(n.toString.take(n.toString.length - 1).toInt, result) else result
      }
      if (n < 8)
        false
      else {
        rightCheck(n) & leftCheck(n)
      }
    }                                             //> check: (n: Int)Boolean

  val nats2 = from(10) filter (x => check(x)) take 11
                                                  //> nats2  : scala.collection.immutable.Stream[Int] = Stream(23, ?)

  //val nats2 = from(10) filter (x => check2(x)) filter (x => check4(x)) take 11
  val lats2: List[Int] = nats2 toList             //> lats2  : List[Int] = List(23, 37, 53, 73, 313, 317, 373, 797, 3137, 3797, 7
                                                  //| 39397)

  lats2.foldLeft(0)((a, b) => a + b)              //> res0: Int = 748317

  lats2.filter(p => BigInt(p).pow(1) % 2 == 0)    //> res1: List[Int] = List()

}