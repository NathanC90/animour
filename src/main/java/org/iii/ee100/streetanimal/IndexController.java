package org.iii.ee100.streetanimal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/kevin")
	public String index() {
		return "/index.jsp";
	}
	
	@RequestMapping("/kevinhello")
	public String hello() {
		return "/hello.jsp";
	}
	
	
}
