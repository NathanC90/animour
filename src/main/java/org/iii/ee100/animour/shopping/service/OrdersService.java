package org.iii.ee100.animour.shopping.service;

import org.iii.ee100.animour.shopping.dao.OrdersDao;
import org.iii.ee100.animour.shopping.entity.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class OrdersService {
	
	@Autowired
	private OrdersDao ordersDao;
	
	public void insert(Orders orders) {
		ordersDao.save(orders);
	}
}
