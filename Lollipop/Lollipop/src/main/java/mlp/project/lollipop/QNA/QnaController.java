package mlp.project.lollipop.QNA;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class QnaController {

	@Resource(name ="qnaService")
	QnaService qnaservice;
	
	@RequestMapping(value = "/Qna/list")
	public String Qna_list(Model model, QnaDto dto) {
		
		dto.setStart(dto.getPg()*10); 

		System.out.println("[QnaController Qna_list dto]"+dto.getKey());

		List<QnaDto> qnaList = qnaservice.getList(dto);
		int totalCnt = qnaservice.getTotal(dto);

		System.out.println("[QnaController Qna_list qnaList]"+qnaList);
		System.out.println("[QnaController Qna_list totalCnt]"+totalCnt);
		
		model.addAttribute("qnaList", qnaList);
		model.addAttribute("totalCnt", totalCnt);
		
		return "QNA/Qna";
	}
}
