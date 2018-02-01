package org.iii.ee100.sample.nathan;

import static org.junit.Assert.*;



import org.junit.Test;

public class CalculateImplTest {

	@Test
	public void testAdd() {
		assertEquals(5, new CalculateImpl().add(3, 2));
	}

	@Test
	public void testSub() {
		assertEquals(3, new CalculateImpl().sub(4, 1));
	}

	@Test
	public void testMul() {
		assertEquals(12, new CalculateImpl().mul(3, 4));
	}

	@Test 
	public void testDiv() {
		assertEquals(2, new CalculateImpl().div(8,4),0);
	}

}
