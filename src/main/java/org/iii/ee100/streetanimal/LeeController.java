package org.iii.ee100.streetanimal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LeeController {
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
}
