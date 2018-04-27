package org.iii.ee100.animour.product.dao;

import java.util.List;

import org.iii.ee100.animour.shopping.dao.ClassifyDao;
import org.iii.ee100.animour.shopping.dao.OrdersDao;
import org.iii.ee100.animour.shopping.dao.ProductDao;
import org.iii.ee100.animour.shopping.entity.Product;
import org.iii.ee100.animour.shopping.service.ClassifyService;
import org.iii.ee100.animour.shopping.service.ProductService;
import org.iii.ee100.animour.shopping.entity.Classify;
import org.iii.ee100.animour.shopping.entity.Orders;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class productTest {

	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private OrdersDao ordersDao;
	
	@Autowired
	private ClassifyDao classifyDao;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ClassifyService classifyService;
	
	@Test
	public void testListProduct() {
		Page<Product> page = productService.getPage(1, 6);
		List<Product> products = page.getContent();
		for(Product product:products) {
			System.out.println(product.getName());
		}
	}
	
//	@Test
//	public void testFindAllClassify() {
//		System.out.println(productDao.findByClassify_id(1L));
//	}
	
	@Test
	public void testInsertProduct() {
//		Classify classify1 = new Classify();
//		classify1.setName("寵物伺料");
//		classifyDao.save(classify1);
//		
//		List<Classify> classifies = classifyDao.findAll();
//		long i = 0;
//		for(Classify classify:classifies) {
//			i = classify.getId();
//		}
//		System.out.println(i);
		
//		classifyDao.deleteAll();
//		System.out.println(productDao.findAll());
		
//		Classify classify2 = new Classify();
//		classify2.setName("寵物用品");
//		
//		Classify classify3 = new Classify();
//		classify3.setName("寵物玩具");
//		
//		Classify classify4 = new Classify();
//		classify4.setName("其它");
//		
//		classifyDao.save(classify1);
//		classifyDao.save(classify2);
//		classifyDao.save(classify3);
//		classifyDao.save(classify4);
		
//		Product product1 = new Product();
//		product1.setName("0% 零穀 5 種魚–全齡犬 晶亮護毛配方 2.5 磅");
//		product1.setPrice(391);
//		product1.setQuantity(100L);
//		product1.setMakeDate(java.sql.Timestamp.valueOf("2018-3-15 12:00:00"));
//		product1.setExpire(365);
//		product1.setShelvesDate(java.sql.Date.valueOf("2018-4-8"));
//		product1.setDescription("bbbbbbbbbbbbbbbbbbbbbbbbb");
//		productDao.save(product1);
	}
	
	@Test
	public void testManyToOne() {
		//keyword test
//		System.out.println(productDao.findByNameContaining("磅"));
		
		//依類別查詢商品
//		List<Product> lists = productDao.findByClassify_id(1L);
//		for(Product list:lists) {
//			System.out.println(list.getClassify().getId() + " " + list.getClassify().getName() + " " + list.getName());
//		}
	}
	
/*	@Test
	public void testManyToMany() {
		Product product1 = new Product();
		product1.setName("法國皇家PRP30 貴賓成犬 1.5 公斤");
		product1.setPrice(600);
		product1.setQuantity(20L);
		product1.setMakeDate(java.sql.Timestamp.valueOf("2018-3-15 12:00:00"));
		product1.setExpire(90);
		product1.setShelvesDate(java.sql.Date.valueOf("2018-4-2"));
		
		Product product2 = new Product();
		product2.setName("法國皇家PRP30 貴賓成貓 2.5 公斤");
		product2.setPrice(580);
		product2.setQuantity(10L);
		product2.setMakeDate(java.sql.Timestamp.valueOf("2018-3-15 11:00:00"));
		product2.setExpire(360);
		product2.setShelvesDate(java.sql.Date.valueOf("2018-4-3"));
		
		Product product3 = new Product();
		product3.setName("Natural Balance低敏無穀地瓜鹿肉全犬 4.5 磅");
		product3.setPrice(833);
		product3.setQuantity(92L);
		product3.setMakeDate(java.sql.Timestamp.valueOf("2018-4-25 18:00:00"));
		product3.setExpire(180);
		product3.setShelvesDate(java.sql.Date.valueOf("2018-4-6"));
		
		Orders orders1 = new Orders();
		orders1.setName("訂單一");
		
		Orders orders2 = new Orders();
		orders2.setName("訂單二");
		
		//Test一筆商品多個訂單
//		product1.getOrders().add(orders1);
//		product1.getOrders().add(orders2);
//		productDao.save(product1);
		
		//Test一筆訂單多筆商品
		orders1.getProducts().add(product1);
		orders1.getProducts().add(product2);
		orders1.getProducts().add(product3);
		ordersDao.save(orders1);
	}
*/
	
//	@Test
//	public void testDelete() {
//		productDao.delete(7L);
//	}
	
//	@Test
//	public void testGetNewSex() {
//		List<Product> products = productDao.findTop6ByOrderByShelvesDateDesc();
//		for(Product product:products) {
//			System.out.println(product);
//		}
//	}
	
	@Test
	public void testKeyWord() {
//		Product product = productDao.findByName("Natural Balance低敏無穀地瓜鹿肉全犬 4.5 磅");
//		System.err.println(product);
		
		//依價格<=查詢
//		List<Product> products = productDao.findByPriceLessThanEqual(600);
//		for(Product product:products) {
//			System.out.println(product);
//		}
		
//		List<Product> products = productDao.findByPriceBetween(600, 1000);
//		for(Product product:products) {
//			System.out.println(product);
//		}
		
//		List<Product> products = productDao.findByNameContaining("皇家");
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
		
//		System.out.println(productDao.findByNameContaining("法國皇家"));
	}
	
	
//	@Test
//	public void testFindAll() {
//		Iterable<Product> products = productDao.findAll();
//		for(Product product :products) {
//			System.out.println(product);
//		}
//	}
	
}
