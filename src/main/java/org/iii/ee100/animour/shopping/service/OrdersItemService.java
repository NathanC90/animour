package org.iii.ee100.animour.shopping.service;

import java.util.List;

import org.iii.ee100.animour.shopping.dao.OrdersItemDao;
import org.iii.ee100.animour.shopping.entity.OrdersItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrdersItemService {
	
	@Autowired
	private OrdersItemDao ordersItemDao;
	
	@Transactional(readOnly=true)
	public List<OrdersItem> getAll(){
		return ordersItemDao.findAll();
	}
	
	public void insert(List<OrdersItem> ordersItem) {
		ordersItemDao.save(ordersItem);
	}
}
