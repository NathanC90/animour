package org.iii.ee100.animour.shopping.service;

import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.shopping.dao.ProductDao;
import org.iii.ee100.animour.shopping.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
	
	@Autowired
	ProductDao productDao;
	
	public void insert(Product product) {
		productDao.save(product);
	}
	
	public void update(Product product) {
		productDao.save(product);
	}

	public void delete(Long id) {
		productDao.delete(id);
	}

	public List<Product> getAll() {
		return Lists.newArrayList(productDao.findAll());
	}
	
	public List<Product> getNewSex() {
		return productDao.findTop6ByOrderByShelvesDateDesc();
	}
	
	public Product getOne(Long id) {
		return productDao.findOne(id);
	}
	
	public Product getByName(String name) {
		return productDao.findByName(name);
	}
}
