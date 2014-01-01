문제
=========

소수 3797에는 왼쪽부터 자리수를 하나씩 없애거나 (3797, 797, 97, 7)
오른쪽부터 없애도 (3797, 379, 37, 3) 모두 소수가 되는 성질이 있습니다.


이런 성질을 가진 소수는 단 11개만이 존재합니다. 이것을 모두 찾아서
합을 구하세요.

(참고: 2, 3, 5, 7은 제외합니다)

풀이
=========

풀이 파일은 `ruby solution.rb`를 통해 실행할 수 있습니다. 소수를
생성해주는 Fiber 객체를 만들어 차례대로 소수를 생성하고 
`TruncablePrime.is_truncable_prime?` 메소드를 사용해 truncable prime
여부를 판단해 나갑니다. truncable prime을 11개 찾으면 프로그램을 종료합니다.


파일
=========

```ruby
"./solution.rb"            # 정답 계산해주는 파일
"./lib/prime_generator.rb" # 소수를 생성하는 Fiber 생성
"./lib/truncable_prime.rb" # truncable prime 검증
"./lib/ext/integer.rb"     # Integer 클래스에 is_prime? 메소드 확장
```

실행 시간
=========

```
user     system      total        real
9.050000   0.000000   9.050000 (  9.061592)
```

일일히 소수 계산을 다 수행하기 때문에 속도는 느린 편입니다. 개선하려면
소수 알고리즘을 개선하거나 미리 소수를 만들어놓고 계산해야할 듯 합니다.
