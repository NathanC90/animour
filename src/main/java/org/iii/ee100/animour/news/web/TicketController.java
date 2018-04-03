package org.iii.ee100.animour.news.web;

import org.iii.ee100.animour.news.entity.News;
import org.iii.ee100.animour.news.entity.Ticket;
import org.iii.ee100.animour.news.service.NewsService;
import org.iii.ee100.animour.news.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TicketController {
	
	@Autowired
	TicketService ticketService;	
	
	@RequestMapping("/news/ticket")
	public String newsIndex(Model model) {
		return "/news/ticket";
	}
	
	@RequestMapping(path= {"/findOneTicket"}, method={RequestMethod.GET})
	public String findOne(Ticket tickets, Model model) {
		Ticket ticket = ticketService.getOne(Long.valueOf(tickets.getSubject_id()));
		if (ticket != null) {
			model.addAttribute("oneNews", tickets);
		}
		return "/news/ticket";
	}
	
	@RequestMapping(path= {"/findAllTickets"}, method={RequestMethod.GET})
	public String selectAll(Model model) {
		model.addAttribute("allTickets", ticketService.getAll());
		return "/news/ticket";
	}
	
	@RequestMapping(path= {"/deleteTicket"}, method={RequestMethod.GET})
	public String deleteNews(Ticket tickets, Model model) {
		ticketService.delete(tickets.getSubject_id());
		model.addAttribute("delete", Long.valueOf(tickets.getSubject_id()));
		return "/news/ticket";
	}
	
	@RequestMapping(path= {"/insertTicket"}, method={RequestMethod.POST})
	public String insertNews(Ticket tickets, Model model) {
		ticketService.insert(tickets);
		model.addAttribute("insertNews", tickets);
		return "/news/ticket";
	}
	
	@RequestMapping(path= {"/updateTicket"}, method={RequestMethod.GET})
	public String updateNews(Ticket tickets, Model model) {
		ticketService.update(tickets);
		model.addAttribute("updateTicket", tickets);
		return "/news/ticket";
	}
	
}
