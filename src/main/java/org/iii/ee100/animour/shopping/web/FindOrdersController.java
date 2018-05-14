package org.iii.ee100.animour.shopping.web;

import java.util.List;

import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.shopping.entity.Orders;
import org.iii.ee100.animour.shopping.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FindOrdersController {
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/findOrders/index", method=RequestMethod.GET)
	public String findOrders(Model model) {
		Member currentMember = memberService.getNewCurrentMember();
		List<Orders> ordersList = ordersService.getByMemberOrders(currentMember.getId());
		model.addAttribute("orders_size", ordersList.size());
		model.addAttribute("memberOrders", ordersList);
		
//		for(Orders orders:ordersList) {
//			System.out.println(orders.getMember().getName());
//			System.out.println(orders.getOrderDate());
//			System.out.println(orders.getTotalAmount());
//			List<OrdersItem> ordersItem = orders.getOrdersItem();
//			for(OrdersItem order:ordersItem) {
//				System.out.println(order.getName());
//			}
//		}
		return "/shopping/orderInfo";
	}
}
