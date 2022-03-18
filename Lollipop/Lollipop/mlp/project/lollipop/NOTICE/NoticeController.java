package mlp.project.lollipop.NOTICE;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

	@Resource(name="noticeService")
	NoticeService noticeservice;
	
	
	@RequestMapping(value = "/Notice/list")
	public String Notice_list() {
		return "NOTICE/Notice";
	}
}