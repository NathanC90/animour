package org.iii.ee100.sample.kevinhsu;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class CalculateImplTest {

	@Test
	public void testAdd() {
		assertEquals(9, new CalculateImpl().add(4, 5));
		assertEquals(13, new CalculateImpl().add(11, 2));
	}

	@Test
	public void testSub() {
		assertEquals(3, new CalculateImpl().sub(5, 2));
		assertEquals(0, new CalculateImpl().sub(69, 69));
	}

	@Test
	public void testMul() {
		assertEquals(2, new CalculateImpl().mul(2, 1));
		assertEquals(15, new CalculateImpl().mul(3, 5));
	}

	@Test
	public void testDiv() {
		assertEquals(2, new CalculateImpl().div(2, 1), 0);
		assertEquals(15, new CalculateImpl().div(15, 1), 0);
	}

}
