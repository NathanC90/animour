package org.iii.ee100.animour.news.web;

import org.iii.ee100.animour.news.entity.Event;
import org.iii.ee100.animour.news.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EventController {
	
	@Autowired
	EventService eventService;	
	
	@RequestMapping("/news/event")
	public String newsIndex(Model model) {
		return "/news/ticket";
	}
	
	@RequestMapping(path= {"/findOneEvent"}, method={RequestMethod.GET})
	public String findOne(Event tickets, Model model) {
		Event ticket = eventService.getOne(Long.valueOf(tickets.getSubject_id()));
		if (ticket != null) {
			model.addAttribute("oneEvent", tickets);
		}
		return "/news/event";
	}
	
	@RequestMapping(path= {"/findAllEvents"}, method={RequestMethod.GET})
	public String selectAll(Model model) {
		model.addAttribute("allEvents", eventService.getAll());
		return "/news/event";
	}
	
	@RequestMapping(path= {"/deleteEvent"}, method={RequestMethod.GET})
	public String deleteNews(Event tickets, Model model) {
		eventService.delete(tickets.getSubject_id());
		model.addAttribute("delete", Long.valueOf(tickets.getSubject_id()));
		return "/news/event";
	}
	
	@RequestMapping(path= {"/insertEvent"}, method={RequestMethod.POST})
	public String insertNews(Event tickets, Model model) {
		eventService.insert(tickets);
		model.addAttribute("insertNews", tickets);
		return "/news/event";
	}
	
	@RequestMapping(path= {"/updateEvent"}, method={RequestMethod.GET})
	public String updateNews(Event tickets, Model model) {
		eventService.update(tickets);
		model.addAttribute("updateEvent", tickets);
		return "/news/event";
	}
	
}
