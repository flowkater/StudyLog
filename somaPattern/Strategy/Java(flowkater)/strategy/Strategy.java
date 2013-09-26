package strategy;

/*
 * 가위바위보 전략
 * 다음에 어떤 손을 낼지? nextHand()
 * 직전에 낸손으로 이겼는지, 졌는지 학습 메소드 study(boolean win) 
 * 이긴 경우 study(true), 진 경우 study(false) 
 */
public interface Strategy {
	public abstract Hand nextHand();
	public abstract void study(boolean win);
}
