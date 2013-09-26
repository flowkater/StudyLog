package strategy;

import java.util.Random;

/*
 * 직전 승부에서 이겼으며 다음에도 같은 손, 졌으면 랜덤
 */
public class WinningStrategy implements Strategy{
	private Random random;
	private boolean won = false;
	private Hand prevHand;
	
	public WinningStrategy(int seed){
		random = new Random(seed);
	}

	@Override
	public Hand nextHand() {
		if(!won)
			prevHand = Hand.getHand(random.nextInt(3));
		
		return prevHand;
	}

	@Override
	public void study(boolean win) {
		won = win;
	}
	
}
