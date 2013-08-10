# 7. 패키지와 임포트

- - -

1) `package com.horstmann.impatient`가

```
package com
package horstmann
package impatient
```
> 와 동일하지 않음을 보여주는 예제 프로그램을 작성하라

2) 최상위에 있지 않는 `com` 패키지를 이용하여 스칼라 친구를 골탕먹이는 퍼즐러를 작성하라.

3) `nextInt(): Int, nextDouble(): Double, setSeed(seed: Int): Unit` 함수가 있는 `random` 패키지를 작성하라. 임의의 수 생성에는 다음 선형 합동 생성기를 사용하라

> *next = previous &times; a + b _mod_ 2&rdquo;*

> 여기서 *a = 1664525, b = 1013904223, n = 32* 이다.

4) 스칼라 언어 설계자는 왜 단순히 패키지에 함수와 변수를 추가할 수 있게 허용하는 대신 패키지 오브젝트 문법을 제공했다고 생각하나?

5) `private[com] def giveRaise(rate: Double)`의 의미는 무엇인가? 이는 유용한가?

6) 자바 해시 맵에서 스칼라 해시 맵으로 모든 원소를 복사하는 프로그램을 작성하라. 임포트를 사용하여 두 클래스의 이름을 변경하라.

7) 6번 문제에서 모든 임포트는 최대한 안쪽 스코프로 옮기라.

8)
```
import java._
import javax._
```
의 효과는 무엇인가? 이는 좋은 생각인가?

9) `java.lang.System` 클래스를 임포트하고, `user.name` 시스템 속성에서 사용자 이름을 읽고, `Console` 오브젝트에서 암호를 읽어 암호가 "**secret**"가 아니면 표준 에러 스트림으로 메시지를 출력하는 프로그램을 작성하라. 암호가 맞으면 표준 출력 스트림으로 인사를 출력하라. 다른 임포트는 사용하지 말고 전체 이름(점이 있는)도 사용하지 말아야 한다.

10) `StringBuilder` 말고 `scala` 패키지가 덮어쓰는 `java.lang` 멤버는 무엇이 있는가?


