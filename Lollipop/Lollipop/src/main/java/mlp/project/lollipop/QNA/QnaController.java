package mlp.project.lollipop.QNA;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class QnaController {

	@Resource(name ="qnaService")
	QnaService qnaservice;
	
	@RequestMapping(value = "/Qna/list")
	public String Qna_list(Model model, QnaDto dto) {
		
		dto.setStart((dto.getPg())*10);
		model.addAttribute("qnaList", qnaservice.getList(dto) );
		model.addAttribute("totalCnt",qnaservice.getTotal(dto)  );///////////////////
		
		return "QNA/qna_list";
	}
	
	@RequestMapping(value = "/Qna/write")
	public String Qna_write(Model model) {
		QnaDto dto = new QnaDto();
		model.addAttribute("qnaDto",dto );
		
		return "QNA/qna_write";
	}
	
	@RequestMapping(value = "/Qna/save")
	public String Qna_save(Model model, QnaDto dto) {
		if(dto.getQna_key()==0)
			qnaservice.insert(dto);
		else 
			qnaservice.update(dto);
		return "redirect:/Qna/list";
	
	}
}
