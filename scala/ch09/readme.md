##연습문제
1. 파일 내의 줄을 뒤집는 (마지막 줄을 첫번째로 만드는 등) 스칼라 코드 조각을 작성하라.
  val source = Source.fromFile( "src/study/TestChater9.scala" , "UTF-8" )
  val lines = source.getLines.toArray
  for ( str <- lines. reverse) println( str)

2. 탭이 있는 파일을 읽어 탭 간격이 n 컬럼 경계에 있게 각 탭을 공백으로 치환하여 그 결과를 같은 파일에 쓰는 스칼라 프로그램을 작성하라.


3. 파일을 읽어 문자가 12개 이상인 모든단어를 콘솔에 출력하는 스칼라 코드 조각을 작성하라. 한줄로 작성할 수 있으면 추가점수.
for (ch <- "[A-Za-z]+".r.findAllIn(Source.fromFile( "textSrc.txt" , "UTF-8" ).mkString).toArray) if ( ch .length() > 12 ) println( ch)

4. 부동 소수점 숫자만 있는 텍스트파일을 읽는 스칼라 프로그램을 작성하라. 파일 내 숫자들의 합, 평균, 최댓값, 최솟값을 출력하라.
  var sum = 0.0
  val readText = "[0-9.0-9]+".r.findAllIn(Source.fromFile( "textInteger.txt" , "UTF-8" ).mkString).toArray
  for ( ch <- readText) sum += ( ch.toDouble)
  print(( sum, sum/ readText.length, readText.max, readText.min))

5. 지수 0부터 20까지의 2의 승과 그 역수를 파일에 출력하는 스칼라 프로그램을 작성하라. 다음과 같이 컬럼을 맞추라.
1      1
2      0.5
4      0.25
...      ...
  var resMap = new scala.collection.mutable.LinkedHashMap[Double, Double]
  for ( i <- 0 to 20; pow = scala.math.pow( 2, i)) resMap += ( pow -> 1 / pow)
  val out = new PrintWriter( "powTest.txt" )
  for (( key, value) <- resMap) out.println( "%d%10.5f" .format(key .toInt,value ))
  out.close()

6. 자바 혹은 C++ 프로그램으로 인용 문자열 "like this, maybe with\" or \\"를 찾는 정규 표현식을 만들라. 소스파일에서 그런 문자열을 모두 출력하는 스칼라 프로그램을 작성하라.


7. 텍스트 파일을 읽어 부동 소수점 숫자가 아닌 모든 토큰을 출력하는 스칼라 프로그램을 작성하라. 정규 표현식을 사용하라.

8. 웹페이지의 모든 img 태그의 src 속성을 출력하는 스칼라 프로그램을 작성하라. 정규 표현식과 그룹을 사용하라.


9. 주어진 디렉토리와 그 하위 디렉토리에 .class 확장자를 갖는 파일이 얼마나 많은지 세는 스칼라 프로그램을 작성하라.
  def searchDir(dir: File): Iterator[File] = {
    var sum = 0;
    val children = dir.listFiles.filter(_.isDirectory)
    children.toIterator ++ children.toIterator.flatMap(searchDir _)
  }
  def searchClass(dir: Iterator[File]): Int = {
    var sum = 0;
    for ( c <- dir; sub = c.listFiles()) {
      for ( subFile <- sub; res = subFile.getName().endsWith( ".class" )) {
        if (res ) { sum += 1 ; println( subFile) }
      }
    }
    sum
  }
  val resSearch = searchDir( new File("D:/dev/workspace-watchmon" ));

  println(searchClass( resSearch))

10. 직렬화 가능한 Person 클래스 예제를 확장하여 친구의 집합을 저장하게 하라. Person 오브젝트를 몇 개 생성하여, 일부 오브젝트를 다른 오브젝트의 친구로 만들고서 Array[Person]를 파일에 저장하라. 배열을 다시 읽어 친구 관계가 온전한지 검증하라.
class Person(val personName : String, val personPhone: Int) extends Serializable {
}

  var personArray = ArrayBuffer[Person]()
  personArray += new Person("aaa" , 111 )
  personArray += new Person("bbb" , 222 )
  personArray += new Person("ccc" , 333 )
  val resArray = personArray.toArray

  val out = new ObjectOutputStream( new FileOutputStream("personStream.txt" ))
  out.writeObject( resArray); out.close()
  val in = new ObjectInputStream( new FileInputStream("personStream.txt" ))
  val readArray = in.readObject().asInstanceOf[Array[Person]]
  for ( per <- readArray ) println(per .personName , per .personPhone )

