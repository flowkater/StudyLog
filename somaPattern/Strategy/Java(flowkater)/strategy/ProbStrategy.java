package strategy;

import java.util.Random;

/*
 * 다음 손은 언제나 난수로 결정하지만, 과거 승패의 이력을 사용해서 각가의 손을 낼 확률을 바꿈.
 * history[이전에 낸 손][이번에 낼 손]
 */
public class ProbStrategy implements Strategy {
	private Random random;
	private int prevHandValue = 0;
	private int currentHandValue = 0;
	private int[][] history = { { 1, 1, 1, }, { 1, 1, 1, }, { 1, 1, 1, } };

	public ProbStrategy(int seed) {
		random = new Random(seed);
	}

	@Override
	public Hand nextHand() {
		int bet = random.nextInt(getSum(currentHandValue));
		int handvalue = 0;
		if (bet < history[currentHandValue][0])
			handvalue = 0;
		else if (bet < history[currentHandValue][0]
				+ history[currentHandValue][1])
			handvalue = 1;
		else
			handvalue = 2;

		prevHandValue = currentHandValue;
		currentHandValue = handvalue;
		return Hand.getHand(handvalue);
	}

	private int getSum(int hv) {
		int sum = 0;
		for (int i = 0; i < 3; i++)
			sum += history[hv][i];
		return sum;
	}

	@Override
	public void study(boolean win) {
		if(win){
			history[prevHandValue][currentHandValue]++;
		}
		else{
			history[prevHandValue][(currentHandValue + 1) % 3]++;
			history[prevHandValue][(currentHandValue + 2) % 3]++;
		}
	}
}
