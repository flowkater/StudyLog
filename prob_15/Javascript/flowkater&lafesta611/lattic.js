/*
 2 x 2 최단 경로를 설정하는 문제는 aabb 문자의 중복 조합을 구하는 문제이다.
 aabb
 bbaa
 baba
 abab
 abba
 baab
 20 x 20 은 결과적으로 20개의 a와 20개의 b의 조합을 구하는 문제이다.
*/

a = 20;
b = 20;

/*
 메모이제이션 이용해서 팩토리얼 함수 구현
*/
var memoizer = function(memo, fundamental){
	var shell = function(n){
		var result = memo[n];
		if(typeof result !== 'number'){
			result = fundamental(shell, n);
			memo[n] = result;
		}
		return result;
	}
	return shell;
};

var factorial = memoizer([1,1], function(shell, n){
	return n * shell(n-1);
});

// var factorial = function(i){
// 	if(i === 1){
// 		return 1;
// 	}
// 	return i * factorial(i - 1);
// };

result = factorial(a+b)/ (factorial(a) * factorial(b));

document.writeln(result);