package org.iii.ee100.streetanimal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class KevinController {
	
	@RequestMapping("/kevin")
	public String index() {
		return "/kevinindex.jsp";
	}
	
	@RequestMapping("/kevin")
	public String hello() {
		return "/kevinhello.jsp";
	}

}
