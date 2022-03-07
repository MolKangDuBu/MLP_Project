package mlp.project.lollipop.MARK;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MarkController {

	@Resource(name="markService")
	MarkService markService;
	
	@RequestMapping(value = "/mark/list")
	String Mark_list(Model model, MarkDto dto)
	{	
		dto.setPageSize(12);
		dto.setStart( dto.getPg() * dto.getPageSize());
		
		List<MarkDto> list = markService.getList(dto);
		int cnt = markService.getTotal(dto);
		
		model.addAttribute("markList", list);
		model.addAttribute("totalCnt", cnt);
		
		return "MARK/Mark_list";
	}
	
	@RequestMapping(value = "/mark/view")
	String mark_view(MarkDto dto, Model model)
	{
		MarkDto resultDto = markService.getView(dto);
		model.addAttribute("markDto", resultDto);
		
		return "MARK/Mark_view";
	}
}
