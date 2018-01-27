package org.iii.ee100.sample.mick;

import static org.junit.Assert.*;

import org.junit.Test;

public class CalculateImpTest {

	@Test
	public void testAdd() {
		assertEquals(12, new CalculateImp().add(8, 4));
	}

	@Test
	public void testSub() {
		assertEquals(4, new CalculateImp().sub(8, 4));
	}

	@Test
	public void testMul() {
		assertEquals(32, new CalculateImp().mul(8, 4));
	}

	@Test
	public void testDiv() {
		assertEquals(2, new CalculateImp().div(8, 4), 0);
	}

}
