package org.iii.ee100.sample.sarah;

import static org.junit.Assert.*;

import org.iii.ee100.sample.lala.CalculateImpl;
import org.junit.Test;

public class CalculateImplTest {

	@Test
	public void testAdd() {
		assertEquals(3, new CalculateImpl().add(1, 2));
	}

	@Test
	public void testSub() {
		assertEquals(3, new CalculateImpl().sub(5, 2));
	}

	@Test
	public void testMul() {
		assertEquals(2, new CalculateImpl().mul(1, 2));
	}

	@SuppressWarnings("deprecation")
	@Test
	public void testDiv() {
		assertEquals(3.0, new CalculateImpl().div(7, 2));
	}

}
