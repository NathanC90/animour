package org.iii.ee100.animour.shopping.service;

import java.util.List;

import org.iii.ee100.animour.shopping.entity.ProductBean;

public interface ProductService {

	void insert(ProductBean productbean);

	void update(ProductBean productbean);

	void delete(Long id);

	List<ProductBean> getAll();

	ProductBean getOne(Long id);

}