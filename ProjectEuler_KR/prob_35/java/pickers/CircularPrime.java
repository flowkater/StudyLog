package euler35;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class CircularPrime {

	private Map m = new HashMap();
	private List circularPrimeList = new ArrayList();
	
	private Long max;

	public CircularPrime(Long max) {
		this.max = max;
	}
	
	public List getCircularPrimeList() {
		
		for(long i = 2; i <= max; i++) {
			checkCircularPrime(i);
		}
		
		return circularPrimeList;
		
	}
	
	private void checkCircularPrime(Long value) {
		List<Long> result = new ArrayList<Long>();
		
		List<String> list = new ArrayList();
		
		for(int i = 1 ; i <= value.toString().length(); i++) {
			String sValue = value.toString().substring(i-1) + value.toString().substring(0,i-1);
			list.add(sValue);
//			System.out.println(sValue);
		}
		
		for(String s : list) {
			if(!checkPrime(Long.parseLong(s))) {
				return;
			} else {
				m.put(Long.parseLong(s), s);
			}
		}
		circularPrimeList.add(value);
	}
	
	
	private boolean checkPrime(Long value) {
		
		int length = 0;
		if(m.get(value) != null && !m.get(value).equals(value)) {
			return false;
		}
		for(long i = 2; i < value ; i ++) {
			
			if(value%i == 0) {
				length++;
				break;
			}
		}
		
		if (length == 0) {
			return true;
		}
		
		return false;
	}

	
	public static void main(String[] args) {
		CircularPrime p = new CircularPrime((long) 100000);
		
		System.out.println(p.getCircularPrimeList());
	}
}
