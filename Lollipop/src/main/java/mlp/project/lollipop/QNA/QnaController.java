package mlp.project.lollipop.QNA;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnaController {

	@Resource(name ="qnaService")
	QnaService qnaservice;
	
	@RequestMapping(value = "/Qna/list")
	public String Qna_list() {
		return "QNA/Qna";
	}
}
