package mlp.project.lollipop.NOTICE;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

// new NoticeController()
@Controller
public class NoticeController {

	@Resource(name = "noticeService")
	NoticeService service;

	@RequestMapping(value = "/notice/list") // 사용자가 요청한 URL
	public String Notice_list(NoticeDto dto, Model model) {
		
		// 여기 데이터가 없으면 jsp 문제
		System.out.println("[NoticeController Notice_list] " + dto);
		
		
		// dto.setStart( dto.getPg()*dto.getPageSize() );
		//sm.selectList("Notice_getList", dto);
		//System.out.println(dto.getNotice_key());
		dto.setStart(dto.getPg()*10); 
		model.addAttribute("noticeList", service.getList(dto));
		
		// 디비 쿼리 문제
		System.out.println("[NoticeController service.getList] " + service.getList(dto));
		
		model.addAttribute("totalCnt", service.getTotal(dto));
		
		
		
		return "NOTICE/Notice_list"; // 사용자 볼 페이지
	}

	@RequestMapping("/notice/datalist")
	@ResponseBody
	List<NoticeDto> Notice_datalist(NoticeDto dto) {
		return service.getList(dto);
	}

	@RequestMapping(value = "/notice/save")
	String Notice_save(NoticeDto dto) {
		
		//[NoticeController Notice_save]NoticeDto [notice_key=5, notice_id=null, notice_title=null, notice_contents=null, notice_wdate=null]
		System.out.println("[NoticeController Notice_save]" + dto);
		

		if( dto.getNotice_key()==0)
			service.insert(dto);
		else 
			service.update(dto);
		
		return "redirect:/notice/list";  //글쓰고나면
	}

	@RequestMapping("/notice/write")
	String Notice_write(Model model, NoticeDto dto) {

		
		model.addAttribute("NoticeDto", service.getView(dto));

		return "/NOTICE/Notice_write";
	}

	@RequestMapping("/notice/view")
	String Notice_view(NoticeDto paramDto, Model model) {
		
		// 여기 데이터가 없으면 jsp 문제
		System.out.println("[NoticeController Notice_view] " + paramDto);
				
		NoticeDto dto = service.getView(paramDto);

		System.out.println("[NoticeController dto] " + dto);

		model.addAttribute("noticeDto", dto);

		return "/NOTICE/Notice_view";
	}

	@RequestMapping("/notice/reply")
	String Notice_reply(NoticeDto paramDto, Model model) {
		NoticeDto dto = service.getView(paramDto);

		// dto.setTitle("Re:" + dto.getTitle());
		//dto.setSeq("");
		dto.setNotice_contents("");

		model.addAttribute("NoticeDto", dto);
		model.addAttribute("mode", "reply");
		return "/NOTICE/Notice_write";
	}
	
	@RequestMapping(value="/notice/delete")
	String board_delete(NoticeDto dto)
	{
		service.delete(dto.getNotice_key()+"");
		
		return "redirect:/notice/list";  //글쓰고나면
	}

}