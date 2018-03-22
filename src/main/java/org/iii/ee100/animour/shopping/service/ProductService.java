package org.iii.ee100.animour.shopping.service;

import java.util.List;

import org.iii.ee100.animour.shopping.dao.ProductDao;
import org.iii.ee100.animour.shopping.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
	
	@Autowired
	ProductDao productDao;
	
	
	public ProductService() throws InstantiationException, IllegalAccessException, ClassNotFoundException {

		String daoImplName = "org.iii.ee100.animour.shopping.dao.ProductDao";
		productDao = (ProductDao) Class.forName(daoImplName).newInstance();
	}
	
	public void insert(Product product) {
		productDao.insert(product);
	}
	
	public void update(Product product) {
		productDao.update(product);
	}

	public void delete(Long id) {
		productDao.delete(id);
	}

	public List<Product> getAll() {
		return productDao.findAll();
	}

	public Product getOne(Long id) {
		return productDao.findById(id);
	}
}
