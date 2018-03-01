package org.iii.ee100.streetanimal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class sarahcontroller {

	@RequestMapping("/Sarah")
	public String index() {
		return "index.jsp";
	}

	@RequestMapping("/hello, Sarah")
	public String hello() {
		return "sarah.jsp";
	}

	public sarahcontroller() {

	}

}
