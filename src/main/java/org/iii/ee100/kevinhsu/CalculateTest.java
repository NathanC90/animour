package org.iii.ee100.kevinhsu;

import org.iii.ee100.sample.Calculate;

public class CalculateTest implements Calculate {

	public int add(int a, int b) {
		int sum = a + b;
		return sum;
	}

	public int sub(int a, int b) {
		int sub = a - b;
		return sub;
	}

	public int mul(int a, int b) {
		int mul = a * b;
		return mul;
	}

	public double div(int a, int b) {
		double div = a / b;
		return div;
	}

	public static void main(String[] args) {

		
	}

}
