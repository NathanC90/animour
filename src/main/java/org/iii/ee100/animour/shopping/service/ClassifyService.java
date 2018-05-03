package org.iii.ee100.animour.shopping.service;

import java.util.List;
import java.util.Set;

import org.iii.ee100.animour.shopping.dao.ClassifyDao;
import org.iii.ee100.animour.shopping.dao.ProductDao;
import org.iii.ee100.animour.shopping.entity.Classify;
import org.iii.ee100.animour.shopping.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ClassifyService {
	
	@Autowired
	private ClassifyDao classifydao;
	
	@Transactional(readOnly=true)
	public List<Classify> getAll(){
		return classifydao.findAll();
	}
	
}
