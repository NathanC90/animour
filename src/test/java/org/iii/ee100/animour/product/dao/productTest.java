package org.iii.ee100.animour.product.dao;

import java.util.Arrays;
import java.util.List;

import org.iii.ee100.animour.shopping.dao.ClassifyDao;
import org.iii.ee100.animour.shopping.dao.OrdersDao;
import org.iii.ee100.animour.shopping.dao.ProductDao;
import org.iii.ee100.animour.shopping.entity.Product;
import org.iii.ee100.animour.shopping.entity.Classify;
import org.iii.ee100.animour.shopping.entity.Orders;
import org.iii.ee100.animour.shopping.service.ProductService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class productTest {

	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private OrdersDao ordersDao;
	
//	@Test
//	public void TestInsertProduct() {
//		Product product1 = new Product();
//		product1.setName("法國皇家PRP30 貴賓成犬 1.5 公斤");
//		product1.setPrice(600);
//		product1.setQuantity(20L);
//		product1.setMakeDate(java.sql.Timestamp.valueOf("2018-3-15 12:00:00"));
//		product1.setExpire(90);
//		product1.setShelvesDate(java.sql.Date.valueOf("2018-4-2"));
//		
//		productDao.save(product1);
//	}
	
/*	@Test
	public void TestManyToMany() {
		Classify classify1 = new Classify();
		classify1.setClassifyName("狗商品");
		
		Classify classify2 = new Classify();
		classify2.setClassifyName("貓商品");
		
		Classify classify3 = new Classify();
		classify3.setClassifyName("其它商品");
		
//		Product product = null;
//		for(int i = 1; i <=10; i++) {
//			product = new Product();
//			product.setName("法國皇家PRP30 貴賓成犬 1.5 公斤");
//			product.setPrice(600);
//			product.setQuantity(20L);
//			product.setMakeDate(java.sql.Timestamp.valueOf("2018-3-15 12:00:00"));
//			product.setExpire(60);
//			product.setShelvesDate(java.sql.Date.valueOf("2018-4-2"));
//			productDao.save(product);
//		}
	
		Product product1 = new Product();
		product1.setName("法國皇家PRP30 貴賓成犬 1.5 公斤");
		product1.setPrice(600);
		product1.setQuantity(20L);
		product1.setMakeDate(java.sql.Timestamp.valueOf("2018-3-15 12:00:00"));
		product1.setExpire(90);
		product1.setShelvesDate(java.sql.Date.valueOf("2018-4-2"));
		product1.setClassify(classify1);
		
		Product product2 = new Product();
		product2.setName("法國皇家PRP30 貴賓成貓 2.5 公斤");
		product2.setPrice(580);
		product2.setQuantity(10L);
		product2.setMakeDate(java.sql.Timestamp.valueOf("2018-3-15 11:00:00"));
		product2.setExpire(360);
		product2.setShelvesDate(java.sql.Date.valueOf("2018-4-3"));
		product2.setClassify(classify2);
		
		Product product3 = new Product();
		product3.setName("Natural Balance低敏無穀地瓜鹿肉全犬 4.5 磅");
		product3.setPrice(833);
		product3.setQuantity(92L);
		product3.setMakeDate(java.sql.Timestamp.valueOf("2018-4-25 18:00:00"));
		product3.setExpire(180);
		product3.setShelvesDate(java.sql.Date.valueOf("2018-4-6"));
		product3.setClassify(classify3);
		
		Orders orders1 = new Orders();
		orders1.setOrdersName("訂單一");
		
		Orders orders2 = new Orders();
		orders2.setOrdersName("訂單二");
		
		//Test一筆商品多個訂單
//		product1.getOrders().add(orders1);
//		product1.getOrders().add(orders2);
//		productDao.save(product1);
		
		//Test一筆訂單多筆商品
		orders1.getProducts().add(product1);
		orders1.getProducts().add(product2);
		orders1.getProducts().add(product3);
		ordersDao.save(orders1);
	}*/
	
	
//	@Test
//	public void TestDelete() {
//		productService.delete(7L);
//	}
	
//	@Test
//	public void TestGetNewSex() {
//		List<Product> products = productDao.findTop6ByOrderByShelvesDateDesc();
//		for(Product product:products) {
//			System.out.println(product);
//		}
//	}
	
	@Test
	public void TestKeyWord() {
//		Product product = productDao.findByName("Natural Balance低敏無穀地瓜鹿肉全犬 4.5 磅");
//		System.err.println(product);
		
//		List<Product> products = productDao.findByPriceLessThanEqual(600);
//		for(Product product:products) {
//			System.out.println(product);
//		}
		
//		List<Product> products = productDao.findByPriceBetween(600, 1000);
//		for(Product product:products) {
//			System.out.println(product);
//		}
		
//		List<Product> products = productDao.findByNameKeyWord("皇家");
//		for(Product product:products) {
//			System.out.println(product);
//		}
		
//		List<Product> products = productDao.findByNameStartingWithAndPriceLessThan("法國皇家", 600);
//		for(Product product:products) {
//			System.out.println(product);
//		}
		
//		List<Product> products = productDao.findByNameEndingWithAndPriceLessThan("磅", 1000);
//		for(Product product:products) {
//			System.out.println(product);
//		}
		
//		List<Product> products = productDao.findByNameInAndPriceLessThan(Arrays.asList("Natural Balance低敏無穀地瓜鹿肉全犬 4.5 磅",
//				"法國皇家PRP30 貴賓成貓 2.5 公斤", "法國皇家PRP30 貴賓成犬 1.5 公斤"), 599);
//		System.out.println(products);
		
		System.out.println(productDao.findByNameContaining("法國皇家"));
	}
	
	
//	@Test
//	public void testFindAll() {
//		Iterable<Product> products = productDao.findAll();
//		for(Product product :products) {
//			System.out.println(product);
//		}
//	}
	
}
