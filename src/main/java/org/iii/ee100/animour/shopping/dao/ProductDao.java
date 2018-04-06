package org.iii.ee100.animour.shopping.dao;

import java.util.List;

import org.iii.ee100.animour.shopping.entity.Product;
import org.springframework.data.repository.CrudRepository;

//@RepositoryDefinition(domainClass=Product.class, idClass=Long.class)
public interface ProductDao extends CrudRepository<Product, Long> {
	//FROM product ORDER BY shelvesDate DESC FETCH FIRST 6 ROWS ONLY
	List<Product> findTop6ByOrderByShelvesDateDesc();
	
	//WHERE name = ?
	Product findByName(String name);
	
	//WHERE price <= ?
	List<Product> findByPriceLessThanEqual(Integer price);
	
	//where price BETWEEN ? and ?
	List<Product> findByPriceBetween(Integer startPrice, Integer endPrice);
	
	//WHERE name LIKE ?% AND price < ?
	List<Product> findByNameStartingWithAndPriceLessThan(String name, Integer price);
	
	//WHERE name LIKE %? AND price < ?
	List<Product> findByNameEndingWithAndPriceLessThan(String name, Integer price);
	
	//WHERE name IN (?,?,?) AND price = ?
	List<Product> findByNameInAndPriceLessThan(List<String> name, Integer price);

}
