##연습문제
1. 사고 싶은 여러 장치의 가격 맵을 만들라. 그러고 나서 키는 같고 가격은 10% 할인된 두 번째 맵을 생성하라.
  val bucketMap = Map( "CD" -> 1000 , "RAM" -> 50000, "WD" -> 80000)
  var resultMap = new scala.collection.mutable.LinkedHashMap[String, Int]
  for (( key, value) <- bucketMap ) { resultMap += ( key -> ( value * 0.9).toInt) }
  print( resultMap);

2. 파일에서 단어들을 읽어 들이는 프로그램을 작성하라. 각 단어가 얼마나 빈번하게 등장하는지 세는 수정 가능한 맵을 이용하라. 단어를 읽어 들이는 데는 간단히 java.util.Scanner를 사용하라.
val in = new java.util.Scanner(new java.io.File("myfile.txt"))
while (in.hasNext()) process in.next()
또는 9장의 스칼라 방식을 참조하라.
마지막에 모든 단어와 횟수를 출력하라.
  val iter = Source.fromFile( "textSrc.txt" , "UTF-8" ).buffered
  var mutableMap = new scala.collection.mutable.HashMap[Char, Int]
  while ( iter.hasNext) {
    val iterChar = iter.next
    val value =  sortMap.getOrElse( iterChar , 1 )
    mutableMap += ( iterChar -> value )
  }
  print( mutableMap)

3. 2번 문제를 수정 불가능한 맵으로 반복하라.
  val iter = Source.fromFile( "textSrc.txt" , "UTF-8" ).buffered
  var immutableMap = new scala.collection.immutable.HashMap[Char, Int]
  while ( iter.hasNext) {
    val iterChar = iter.next
    val value =  sortMap.getOrElse( iterChar , 1 )
    immutableMap += ( iterChar -> value )
  }
  print( immutableMap)

4. 2번 문제를 단어가 정렬되어 출력되게 정렬 맵으로 반복하라.
  val iter = Source.fromFile( "textSrc.txt" , "UTF-8" ).buffered
  var sortMap = scala.collection.immutable.SortedMap( ' ' -> 0 )
  while ( iter.hasNext) {
    val iterChar = iter.next
    val value = sortMap.getOrElse( iterChar, 1)
    sortMap += ( iterChar -> value )
  }
  print( sortMap)

5. 2번 문제를 java.util.TreeMap을 스칼라 API로 개조해서 반복하라.

6. "Monday"를 java.util.Calendar.MONDAY로 매핑하고 다른 요일도 비슷한 방식으로 매핑하는 링크 해시 맵을 정의하라. 원소는 삽입된 순서로 방문이 일어남을 보이라.
  val dayMap = new scala.collection.mutable.LinkedHashMap[String, Int]
  dayMap += ( "TUESDAY" -> java.util.Calendar. TUESDAY)
  dayMap += ( "MONDAY" -> java.util.Calendar. MONDAY)
  dayMap += ( "WEDNESDAY" -> java.util.Calendar. WEDNESDAY )
  dayMap += ( "THURSDAY" -> java.util.Calendar. THURSDAY)
  dayMap += ( "FRIDAY" -> java.util.Calendar. FRIDAY)
  dayMap += ( "SATURDAY" -> java.util.Calendar. SATURDAY)
  dayMap += ( "SUNDAY" -> java.util.Calendar. SUNDAY)
  print( dayMap)

7. 다음과 같이 모든 자바 속성의 표를 출력하라.
java.runtime.name      |Java(TM) SE Runtime Environment
sun.boot.library.path      |/home/apps/jdk1.6.0_21/jre/lib/i386
java.vm.version      |17.0-b16
java.vm.vender      |Sun Microsystems Inc.
java.vendor.url      |http://java.sun.com/
path.separator      |:
java.vm.name      |Java Hotspot(TM) Server VM
테이블을 출력하기 전에 가장 긴 키의 길이를 찾아야 할 것이다.

8 배열에서 가장 작은 수와 큰 수의 쌍을 리턴하는 minmax(values:Array[Int]) 함수를 작성하라.
    def minmax(values: Array[Int]) = {
      ( values.max, values.min)
    }
    println(minmax(Array( 1, 2, 3, 4, 5, 6, 7)));

9.v보다 작은 수의 개수, v와 같은 수의 개수, v보다 큰 수의 개수를 트리플로 리턴하는 Iteqgt(Value: Array[Int], v:Int) 함수를 작성하라.
  def iteqgt(values: Array[Int], compare: Int) = {
    var imutableMap = new scala.collection.immutable.HashMap[Int, Int]
    for ( v <- values) { val value = if ( imutableMap.contains( v)) ( imutableMap (v ) + 1 ) else 1 ; imutableMap += ( v -> value) }
    var min, equl, max = 0
    for ( set <- imutableMap .keySet) { if ( set < compare) min += imutableMap (set ); if (set == compare) equl += imutableMap( set); if (set > compare) max += imutableMap (set ) }
    ( min, equl, max)
  }

  val testArray = Array( 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 4, 12, 2, 2, 5, 56, 6, 6, 4 , 4 , 3 , 4 , 6 , 6 , 6 , 4 , 4 , 56 , 5 , 4 , 3 , 3 , 4 , 4 , 5 , 5 , 6 , 3 , 3 , 54 , 6 )
  print(iteqgt( testArray, 5));

10. "hello".zip("World")와 같이 두 문자열을 집(zip)하면 무슨일이 생기나? 가능한 유스 케이스를 생각하라.
println( "Hello".zip( "Worlds" ))
