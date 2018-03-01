package tw.ync.myproject.type;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class nathanController {
	
	@RequestMapping("/")
	public String index() {
		return "/index.jsp";
	}
	
	@RequestMapping("/helloNate")
	public String Hello() {
		return "/helloNate.jsp";
	}

}
