// n의 약수들 중에서 자신을 제외한 것의 합을 d(n)으로 정의했을 때,
// 서로 다른 두 정수 a, b에 대하여 d(a) = b 이고 d(b) = a 이면 
// a, b는 친화쌍이라 하고 a와 b를 각각 친화수(우애수)라고 합니다. 

// 예를 들어 220의 약수는 자신을 제외하면 1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110 이므로 그 합은 d(220) = 284 입니다.
// 또 284의 약수는 자신을 제외하면 1, 2, 4, 71, 142 이므로 d(284) = 220 입니다.
// 따라서 220과 284는 친화쌍이 됩니다. 

// 10000 이하의 친화수들을 모두 찾아서 그 합을 구하세요.

function d (n) {
	var result = 0;
	for(var i = 1; i < n; i++){
		if(n%i == 0){
			result += i;
		}
	}
	return result;
}

function check(max){
	var result = [];
	for(var i=1; i<=max; i++){
		var a = d(i);
		if(d(a) == i && a !== i){
			var sum = a + i;
			if(result.length == 0){
				result.push(sum);
			}else{
				if (!include(result, sum)){
					result.push(sum);	
				}
			}
			// 
		}  //i의 진약수의 합 i -> d(i), d(d(i)) -> i (220->284), d(284) -> 220 
	}	

	var h=0;
	for(var k=0; k<result.length; k++){
		h += result[k];
	}
	return h;
}

function include(arr, x){
	for (var i = 0; i < arr.length; i++){
		if(arr[i] == x){
			return true;
		}
	}
	return false;
}

function arr_return(){
	var arr = ['one', 'two', 'three', 'four'];
	return arr;
}


document.writeln("f d(7)==6 -> " + (d(7) == 6) + "<br/>");
document.writeln("t d(6)==6 -> " + (d(6) == 6)+ "<br/>");
document.writeln("t d(220)==284 -> " + (d(220) == 284)+ "<br/>");
document.writeln("t d(284)==220 -> " + (d(284) == 220)+ "<br/>");
document.writeln("==========================================<br/>");
// document.writeln("504 check(300) " + (check(300) == 504) + "<br/>");
document.writeln(check(10000) + "<br/>");
document.writeln("==========================================<br/>");
document.writeln(arr_return());
