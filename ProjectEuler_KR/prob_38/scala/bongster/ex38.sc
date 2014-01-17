package test

import scala.collection.mutable.Map

import scala.collection.mutable.ArrayBuffer

object ex38 {
  println("No.38 어떤수에(1,2,...)를 곱해서 이어붙여 얻을수 있는 가장 큰 1 ~ 9 팬 디지털 숫자")
                                                  //> No.38 어떤수에(1,2,...)를 곱해서 이어붙여 얻을수 있는 가�
                                                  //| � 큰 1 ~ 9 팬 디지털 숫자

	def getMax(a: Int, b: Int): Int = {
  	def pandigitalNum(n: Int,r: String ="",count: Int): Int = {
  		if(r.size == 9 && count > 1) {
  				val arr = r.toArray
  				scala.util.Sorting.quickSort(arr)
  				if(arr.mkString("") == "123456789") r.toInt else 0
  		}
  		else if(r.size < 9){
  				pandigitalNum(n, r + n * count, count + 1)
  		}else{
  			0
  		}
  	}
		Math.max(pandigitalNum(a,count = 1),pandigitalNum(b,count = 1))
	}                                         //> getMax: (a: Int, b: Int)Int
	
  val bong = (1 until 10000).foldLeft(0)((a, b ) => getMax(a,b))
                                                  //> bong  : Int = 932718654
  
 // val num = bong.foldLeft(0)((a,b) => getMax(a,b))
                                                  
 
                                                  
}