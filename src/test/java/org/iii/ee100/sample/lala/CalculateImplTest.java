package org.iii.ee100.sample.lala;

import static org.junit.Assert.*;

import org.junit.Test;

public class CalculateImplTest {

	@Test
	public void testAdd() {
		assertEquals(3, new CalculateImpl().add(1, 2));

		assertEquals(5, new CalculateImpl().add(3, 2));
		
	}

	@Test
	public void testSub() {
		assertEquals(-1, new CalculateImpl().sub(1, 2));

		assertEquals(1, new CalculateImpl().sub(3, 2));
	}

	@Test
	public void testMul() {
		assertEquals(2, new CalculateImpl().mul(1, 2));

		assertEquals(6, new CalculateImpl().mul(3, 2));
	}

	@Test
	public void testDiv() {
		assertEquals(0.5, new CalculateImpl().div(1, 2),0);

		assertEquals(1.5, new CalculateImpl().div(3, 2),0);
	}

}
