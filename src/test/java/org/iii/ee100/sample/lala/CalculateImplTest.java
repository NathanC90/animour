package org.iii.ee100.sample.lala;

import static org.junit.Assert.fail;
import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class CalculateImplTest {

	@Test
	public void testAdd() {
		assertEquals(3, new CalculateImpl().add(1, 2));
		
		assertEquals(5, new CalculateImpl().add(3, 2));
	}

	@Test
	public void testSub() {
		fail("Not yet implemented");
	}

	@Test
	public void testMul() {
		fail("Not yet implemented");
	}

	@Test
	public void testDiv() {
		fail("Not yet implemented");
	}

}
