package org.iii.ee100.animour.shopping.dao;

import org.iii.ee100.animour.shopping.entity.Orders;
import org.springframework.data.repository.CrudRepository;

public interface OrdersDao extends CrudRepository<Orders, Long> {

}
