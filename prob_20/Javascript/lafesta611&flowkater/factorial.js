var print_result = "93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000";
var test_result = "3628800";
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
	// var result = '1';
	// for(var i = n ; i > 0; i--){
	// 	result = multiple_tos();
	// }
	// return result;
	var result = '1';

	for(var i = 1 ; i <= n; i++){
		result = multiple_tos(result, i.toString());
	}

	return result;
}

function sum(n){
	var arr = factorial(n).toString().split('');
	
	var result = 0;

	for(var i = 0; i < arr.length; i++){
		result += parseInt(arr[i]);
	}

	return result;
}

function multiple_tos(a,b){	
	var a_arr = a.split('').reverse();
	var b_arr = b.split('').reverse();

	if(a_arr.length < b_arr.length){
		var c_arr = a_arr;
		a_arr = b_arr;
		b_arr = c_arr;
	}

	var result = '';
	
	var carry = '';
	var step = '';
	var stepa = '';

	for(var i = 0; i < b_arr.length; i++){
		var multi = multi_arr(a_arr, b_arr[i] ,carry);
		// var multi = (a * parseInt(b_arr[i]) + carry).toString().split('');
		// document.writeln(multi + "<br>");

		result += multi.pop();
		
		carry = multi.join('');
	}
	return carry + result.split('').reverse().join('');;
}


function multi_arr(a_arr, b, carry){
	var carry_a = 0;
	var step = '';
	for(var i = 0; i < a_arr.length; i++){
		var m = ( parseInt(a_arr[i]) * parseInt(b) + carry_a).toString().split('');
	
		step += m.pop();

		if(m.length > 0){
			carry_a = parseInt(m.join(''));	
		}else {
			carry_a = 0;
		}	
		// document.writeln(step + "<br>");
	}

	// step = (parseInt(step.split('').reverse().join('')) + carry).toString();
	carry = carry.split('').reverse().join('');	

	// step = sum_arr(step, carry);

	var s_arr = sum_arr(step,carry);
	step = s_arr[0];

	carry_a = carry_a + s_arr[1];

	if(carry_a !== 0){
		step = carry_a + step;
	}

	// document.writeln(step + "<br>");

	// var multi = (parseInt(stepa) + carry).toString().split('');
	return step.split('');
}

function sum_arr(step, carry){
	var result = '';
	var sum_carry = 0;
	var current_i;

	for(var i = 0 ; i< step.length; i++){
		var sum;
		if(i < carry.length){
			sum = (parseInt(step[i]) + parseInt(carry[i]) + sum_carry).toString().split('');
		}else{
			sum = (parseInt(step[i]) + sum_carry).toString().split('');
		}
		
		result += sum.pop();
		if(sum.length > 0){
			sum_carry = parseInt(sum.join(''));
		}else{
			sum_carry = 0;
		}	
	}

	return [result.split('').reverse().join(''), sum_carry];
}

// document.writeln("10! -> 3628800 : " + (factorial(100)) + "<br/>");
// document.writeln(multiple_tos('','90') + "<br/>");


// document.writeln(factorial(10) + "<br/>");
// document.writeln(test_result + "<br/>");

// document.writeln("============================<br/>");

document.writeln(factorial(15) + "<br/>");
document.writeln("1307674368000" + "<br/>");

document.writeln("============================<br/>");

// document.writeln(multiple_tos('87178291200','15') + "<br/>");

// document.writeln(factorial(16) + "<br/>");
// document.writeln("20922789888000" + "<br/>");

// document.writeln("============================<br/>");

// document.writeln(factorial(17) + "<br/>");
// document.writeln("355687428096000" + "<br/>");

// document.writeln("============================<br/>");

// document.writeln(factorial(18) + "<br/>");
// document.writeln("6402373705728000" + "<br/>");

// document.writeln("============================<br/>");

// document.writeln(factorial(19) + "<br/>");
// document.writeln("121645100408832000" + "<br/>");

// document.writeln("============================<br/>");

document.writeln(factorial(20) + "<br/>");
document.writeln("2432902008176640000" + "<br/>");

document.writeln("============================<br/>");

// document.writeln(factorial(30) + "<br/>");
// document.writeln("265252859812191058636308480000000" + "<br/>");

// document.writeln("============================<br/>");

document.writeln(factorial(100) + "<br/>");
document.writeln(print_result + "<br/>");

document.writeln("============================<br/>");

document.writeln(sum(100) + " == 648<br/>");
// document.writeln(sum_arr(['3','2','3','2','3','2','3','2','3','2','3'],['9','9']) + "<br/>");
// document.writeln(factorial(100) + "<br/>");
// document.writeln(multi_arr(['3','2'],'5',0) + "<br/>");
// document.writeln(multi_arr(['3','2'],'4',11) + "<br/>");
// document.writeln(all_multi(10));
// document.writeln("10! -> 27 : " + (sum(10) == 27 ) + "<br/>");
// document.writeln("100! : " + (sum(100)) + "<br/>")