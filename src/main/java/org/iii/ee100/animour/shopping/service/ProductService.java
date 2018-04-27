package org.iii.ee100.animour.shopping.service;

import java.util.ArrayList;
import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.shopping.dao.ClassifyDao;
import org.iii.ee100.animour.shopping.dao.ProductDao;
import org.iii.ee100.animour.shopping.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ProductService extends GenericService<Product> {
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private ClassifyDao classifydao;
	
	public Page<Product> getPage(int pageNo, int pageSize) {
		PageRequest pageable = new PageRequest(pageNo - 1, pageSize);
		return productDao.findAll(pageable);
	}
	
	@Override
	public void insert(Product product) throws Exception {
		productDao.saveAndFlush(product);
	}
	
	@Override
	public void update(Product product) throws Exception {
		productDao.save(product);
	}
	
	@Override
	public void delete(Long id) throws Exception {
		productDao.delete(id);
	}
	
	@Override
	public ArrayList<Product> getAll() {
		return Lists.newArrayList(productDao.findAll());
	}
	
	@Override
	public Product getOne(Long id) {
		return productDao.findOne(id);
	}
	
	public List<Product> getNewSex() {
		return productDao.findTop4ByOrderByShelvesDateDesc();
	}
	
	//KeyWord Select By Product
	public List<Product> getByNameKeyWord(String name) {
		return productDao.findByNameContaining("%" + name + "%");
	}
	
	//find Product by Classify
	public List<Product> getByClassify(Long id) {
		return productDao.findByClassify_id(id);
	}
	
	//find Product by PriceLessThanEqual
	public List<Product> getByPriceLessThanEqual(Integer price) {
		return productDao.findByPriceLessThanEqual(price);
	}
}
