package org.iii.ee100.streetanimal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LeeController {
	@RequestMapping("/lee")
	public String index() {
		return "/lee.jsp";
	}
	
}
