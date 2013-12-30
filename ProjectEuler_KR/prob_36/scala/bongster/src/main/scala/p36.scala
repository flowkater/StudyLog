package main.scala

object p36 extends Application{
  def p(num: Int, result: Double = 0): Double = {
    if (num > 0) {
      if (num.toString == num.toString.reverse && num.toBinaryString == num.toBinaryString.reverse) {
        p(num - 1, result + num)
      } else p(num - 1, result)
    } else result
  } //> p36: (num: Int, result: Double)Double

  val result =  p(1000000)
  println(result)
}
