package org.iii.ee100.streetanimal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LalaController {
	
	@RequestMapping("/lala")
	public String lala() {
		return "/lala";
	}

	
	
}
