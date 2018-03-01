package org.iii.ee100.streetanimal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LalaController {
	
	@RequestMapping("/lala")
	public String lala() {
		return "/lala.jsp";
	}
	
	@RequestMapping("/") //要match
	public String index() {
		return "/index.jsp";
	}
	
	
}