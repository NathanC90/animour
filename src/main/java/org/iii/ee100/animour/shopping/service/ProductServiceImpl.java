package org.iii.ee100.animour.shopping.service;

import java.util.List;

import org.iii.ee100.animour.shopping.entity.ProductBean;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {
		
  private org.iii.ee100.animour.shopping.dao.ProductDao productDao;
	
	
	public ProductServiceImpl() throws InstantiationException, IllegalAccessException, ClassNotFoundException {

		String daoImplName = "org.iii.ee100.animour.shopping.dao.ProductDaoImpl";
		productDao = (org.iii.ee100.animour.shopping.dao.ProductDao) Class.forName(daoImplName).newInstance();
	}
	
	@Override
	public void insert(ProductBean productbean) {
		productDao.insert(productbean);
	}
	
	@Override
	public void update(ProductBean productbean) {
		productDao.update(productbean);
	}

	@Override
	public void delete(Long id) {
		productDao.delete(id);
	}

	@Override
	public List<ProductBean> getAll() {
		return productDao.findAll();
	}

	@Override
	public ProductBean getOne(Long id) {
		return productDao.findById(id);
	}
}
