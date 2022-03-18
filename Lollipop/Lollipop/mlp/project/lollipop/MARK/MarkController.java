package mlp.project.lollipop.MARK;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MarkController {

	@Resource(name ="markService")
	MarkService markservice;
	
	
	@RequestMapping(value = "/Mark/list")
	public String Mark_list() {
		return "MARK/Mark";
	}
}
