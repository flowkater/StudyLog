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

// unshift
console.log(power_sum(1000));