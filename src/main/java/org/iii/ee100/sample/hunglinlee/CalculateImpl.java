package org.iii.ee100.sample.hunglinlee;

import org.iii.ee100.sample.Calculate;;

public class CalculateImpl implements Calculate {

	public int add(int a, int b) {
		return a+b;
	}

	public int sub(int a, int b) {
		return a-b;
	}

	public int mul(int a, int b) {
		return a*b;
	}

	public double div(int a, int b) {
		return a/b;
	}
	
}
