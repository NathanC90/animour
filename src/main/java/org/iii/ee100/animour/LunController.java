package org.iii.ee100.animour;

import org.springframework.web.bind.annotation.RequestMapping;

public class LunController {
	@RequestMapping("/lun")
	public String index() {
		return "/lun";
	}
}
