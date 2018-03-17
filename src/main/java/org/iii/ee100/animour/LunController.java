package org.iii.ee100.animour;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LunController {
	@RequestMapping("/lun")
	public String index() {
		return "/lun";
	}
}
