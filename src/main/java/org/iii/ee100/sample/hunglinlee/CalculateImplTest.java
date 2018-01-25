package org.iii.ee100.sample.hunglinlee;

import static org.junit.Assert.*;

import org.iii.ee100.sample.lala.CalculateImpl;
import org.junit.Test;

public class CalculateImplTest {

	@Test
	public void testAdd() {
		assertEquals(3, new CalculateImpl().add(1, 2));
		
		assertEquals(5, new CalculateImpl().add(3, 2));
	}

	@Test
	public void testSub() {
		assertEquals(1, new CalculateImpl().sub(3, 2));
		
		assertEquals(3, new CalculateImpl().sub(5, 2));
	}

	@Test
	public void testMul() {
		assertEquals(6, new CalculateImpl().mul(2, 3));
		
		assertEquals(20, new CalculateImpl().mul(4, 5));
	}

	@Test
	public void testDiv() {
		assertEquals(3, new CalculateImpl().div(9, 3),0.1);
		
		assertEquals(2, new CalculateImpl().div(4, 2),0.1);
	}

}
