package org.iii.ee100.sample.mick;

public class CalculateTest implements org.iii.ee100.sample.Calculate {

	public int add(int a, int b) {
		int result = 0;
		result = a + b;
		return result;
	}

	public int sub(int a, int b) {
		int result = 0;
		result = a - b;
		return result;
	}

	public int mul(int a, int b) {
		int result = 0;
		result = a * b;
		return result;
	}

	public double div(int a, int b) {
		int result = 0;
		result = a / b;
		return result;
	}

}
