package mlp.project.lollipop.NOTICE;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

	@Resource(name="noticeService")
	NoticeService noticeservice;
	
	
	@RequestMapping(value = "/notice/list")
	public String Notice_list(Model model, NoticeDto dto) {
		
		dto.setStart((dto.getPg())*10);
		model.addAttribute("noticeList", noticeservice.getList(dto) );
		model.addAttribute("totalCnt",noticeservice.getTotal(dto)  );///////////////////
		
		return "NOTICE/notice_list";
	}
	
	@RequestMapping(value = "/notice/write")
	public String Notice_write(Model model) {
		NoticeDto dto = new NoticeDto();
		model.addAttribute("noticeDto",dto );
		
		return "NOTICE/notice_write";
	}
	
	@RequestMapping(value = "/notice/save")
	public String Notice_save(Model model,  NoticeDto dto) {
		if(dto.getNotice_key()==0)
			noticeservice.insert(dto);
		else 
			noticeservice.update(dto);
		return "redirect:/notice/list";
	}
}




