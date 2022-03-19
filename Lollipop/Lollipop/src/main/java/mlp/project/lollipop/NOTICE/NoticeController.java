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
		model.addAttribute("reviewDto",dto );
		
		return "NOTICE/notice_write";
	}
	
	@RequestMapping(value = "/notice/delete")
	public String Notice_delete(String notice_key) {
		
		noticeservice.delte(notice_key);
	        return "redirect:/notice/list";
	}
	
	@RequestMapping(value = "/notice/modify")
	public String Notice_modify(Model model, String notice_key) {

	      model.addAttribute("reviewDto", noticeservice.getView(notice_key));
	        return "NOTICE/notice_write";
	}
	
	@RequestMapping(value = "/notice/save")
	public String Notice_save(Model model,  NoticeDto dto) {

		if(dto.getNotice_key()>=1)
			noticeservice.update(dto);
		else 
			noticeservice.insert(dto);
		return "redirect:/notice/list";
	}
}




