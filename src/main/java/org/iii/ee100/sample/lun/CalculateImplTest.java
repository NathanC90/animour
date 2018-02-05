package org.iii.ee100.sample.lun;

import static org.junit.Assert.*;

import org.junit.Test;

public class CalculateImpTest {

	@Test
	public void testAdd() {
		assertEquals(12,new CalculateImp().add(8, 4));
	}

	@Test
	public void testSub() {
		assertEquals(5,new CalculateImp().sub(10, 5));
	}

	@Test
	public void testMul() {
		assertEquals(9,new CalculateImp().mul(3, 3));
	}

	@Test
	public void testDiv() {
		assertEquals(3,new CalculateImp().div(9, 3),0);
	}

}
