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
		return "/news/event";
	}
	
	@RequestMapping(path= {"/findOneEvent"}, method={RequestMethod.GET})
	public String findOne(Event events, Model model) {
		Event event = eventService.getOne(Long.valueOf(events.getSubject_id()));
		if (event != null) {
			model.addAttribute("oneEvent", events);
		}
		return "/news/event";
	}
	
	@RequestMapping(path= {"/findAllEvents"}, method={RequestMethod.GET})
	public String selectAll(Model model) {
		model.addAttribute("allEvents", eventService.getAll());
		return "/news/event";
	}
	
	@RequestMapping(path= {"/deleteEvent"}, method={RequestMethod.GET})
	public String deleteNews(Event events, Model model) {
		eventService.delete(events.getSubject_id());
		model.addAttribute("delete", Long.valueOf(events.getSubject_id()));
		return "/news/event";
	}
	
	@RequestMapping(path= {"/insertEvent"}, method={RequestMethod.POST})
	public String insertNews(Event events, Model model) {
		eventService.insert(events);
		model.addAttribute("insertEvent", events);
		return "/news/event";
	}
	
	@RequestMapping(path= {"/updateEvent"}, method={RequestMethod.GET})
	public String updateNews(Event events, Model model) {
		eventService.update(events);
		model.addAttribute("updateEvent", events);
		return "/news/event";
	}
	
}
