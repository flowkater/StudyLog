function factorial(n){
	// var result = [];
	// for(var j = n; j > 0; j-=2){
	// 	var k=1;
	// 	for(var i = j; i > j-2; i--){
	// 		k *= i;
	// 	}
	// 	result.push(k);
	// } 
	// return result;
	var result = [];
	for(var i = n ; i > 0; i-=2){
		result.push( i * i-1);
	}
	return result;
}

function sum(n){
	var n_s = factorial(n).toString();
	var n_arr = n_s.split('');
	var result = 0;
	for(var i=0; i<n_arr.length; i++){
		result += parsetInt(n_arr[i]);
	}
	return result;
}

function multiple_tos(a,b){	
	var a_arr = a.split('').reverse();
	var b_arr = b.split('').reverse();
	var result = '';
	var carry_a = 0;
	var carry_b = 0;
	var step = '';
	var stepa = '';
	for(var i = 0; i < b_arr.length; i++){
		for(var j=0;j< a_arr.length; j++){
			var m = ( parseInt(a_arr[j]) * parseInt(b_arr[i]) + carry_a ).toString().split('');
			
			step += m.pop();	
			carry_a = parseInt(m.join(''));	
		}

		if(carry_a != NaN){
			stepa = carry_a + step.split('').reverse().join('');
		}

		document.writeln("stepa : " + stepa + " <br>");

		var multi = (parseInt(stepa)+ carry_b).toString().split('');
		// var multi = (a * parseInt(b_arr[i]) + carry).toString().split('');
		result += multi.pop();
		
		carry_b = parseInt(multi.join(''));
		
	}
	var r = '';
	if(carry_b != NaN){
		r = carry_b + result.split('').reverse().join('');		
	}
	return r;
}


// document.writeln("10! -> 3628800 : " + (factorial(100)) + "<br/>");
document.writeln("a: 23, b: 45 -> '1035' : " + typeof (multiple_tos('23','45'))+ " " + (multiple_tos('23','45')) + "<br/>");
// document.writeln(all_multi(10));
// document.writeln("10! -> 27 : " + (sum(10) == 27 ) + "<br/>");
// document.writeln("100! : " + (sum(100)) + "<br/>")