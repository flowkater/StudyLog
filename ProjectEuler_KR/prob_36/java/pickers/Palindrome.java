package euler36;

import java.math.BigInteger;

import javax.sound.sampled.ReverbType;

public class Palindrome {

	private String bitCalc(Integer i) {
		
		String v = "";
		while(!(i==1||i==0)) {
			v += (i%2);
			i = i / 2;
		}
		
		return v;
	}
	
	private String reverse(String s) {
		String result = "";
		
		for(int i = 0; i < s.length(); i++) {
			result = "" + s.toCharArray()[i] + result; 
		}
		
		return result;
	}
	
	private boolean equals(String s1, String s2) {
		
		if(s1.startsWith("0") || s2.startsWith("0")) {
			return false;
		}
		
		return s1.equals(s2);
	}
	
	public static void main(String[] args) {
		Palindrome p = new Palindrome();
		Long sum = new Long(0);
		
		
		for(Integer i = 1; i < Integer.parseInt(args[0]) ; i++ ) {
			if(p.reverse(i.toString()).equals(i.toString()) && 
					p.equals(
							p.bitCalc(i),				// 2진수로 변
							p.reverse(p.bitCalc(i))		// 2진수를 거꾸로 
					) 
			   ) 
			{
				sum += i;
			}
			
		}
		
		System.out.println(sum);
	}
}
