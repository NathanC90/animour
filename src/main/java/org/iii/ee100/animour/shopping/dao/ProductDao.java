package org.iii.ee100.animour.shopping.dao;

import java.util.List;

import org.iii.ee100.animour.shopping.entity.ProductBean;

public interface ProductDao {

	//Insert Products
	void insert(ProductBean products);

	//Update Products
	void update(ProductBean products);

	//Delete Products
	void delete(Long id);

	//FindAll Products
	List<ProductBean> findAll();

	//FindById Products
	ProductBean findById(Long id);

}