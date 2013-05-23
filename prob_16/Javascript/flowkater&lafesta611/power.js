// function power(n){
// 	var arr=[];
// 	var result=1;

// 	for(var i=0; i<n; i++){
// 		arr.push(2);
// 	}

// 	for(var j=0; j<arr.length; j++){
// 		result *= arr[j];
// 	}

// 	return result;
// }

function multiple(n){
	var result = [];
	n = n.reverse();
	var carry = 0;

	for(var i=0; i< n.length; i++){
		var m = ( parseInt(n[i]) * 2 + carry).toString().split('');

		result.unshift(m.pop());

		if(m.length > 0){
			carry = parseInt(m.join());
		}else{
			carry = 0;
		}
	}

	if(carry != 0){
		result.unshift(carry.toString());
	}

	return result;
}

function power(n){
	var result = ['1'];
	for(var i = 0 ; i < n; i++){
		result = multiple(result);
	}
	return result;
}

function power_sum(n){
	var arr = power(n);
	var sum = 0;
	for(var i = 0 ; i< arr.length ; i++){
		sum += parseInt(arr[i]);
	}
	return sum;
}


document.writeln(Math.pow(2,15) + " -> 32768<br>");
document.writeln(Math.pow(2,1000) + " error <br>");


document.writeln(power(1000) + "");





