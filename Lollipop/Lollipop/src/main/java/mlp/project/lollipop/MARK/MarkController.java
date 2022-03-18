package mlp.project.lollipop.MARK;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mlp.project.lollipop.STORE.StoreDto;
import mlp.project.lollipop.USER.UserDto;

@Controller
public class MarkController {

	@Resource(name="markService")
	MarkService markService;
	
	@RequestMapping(value = "/mark/{store_key}")
	public @ResponseBody String addMark(@PathVariable("store_key") int store_key, HttpSession session) {
		
		UserDto dto = (UserDto) session.getAttribute("login");
		String mark_id = dto.getUser_id();
		/* �α��� �Ǿ��ִ� ������ �̿��ؼ� userid�� �����´� */
		MarkDto markDto = new MarkDto();
		markDto.setMark_id(mark_id);
		markDto.setStore_key(store_key);

		boolean istAlreadyExisted = markService.findMark(markDto);
		System.out.println("istAlreadyExisted : " + istAlreadyExisted);
		
		if (istAlreadyExisted) {
			return "already_existed";
		} else {
            markService.addMark(markDto);
			return "add_success";
		}
	}
	
	@RequestMapping(value = "/Mark/list", method = RequestMethod.GET)
	public String Mark_list(Model model,HttpServletRequest request, HttpServletResponse response, MarkDto dto) {
		System.out.println("DDDDDDDDDDD");
		HttpSession session = request.getSession();
		String userid =(String) session.getAttribute("user_id");
		
		System.out.println("dto------------>" + dto);
		
	    dto.setStart(dto.getPg() * 10);
	    dto.setMark_id(userid);
	    
		
	    List<StoreDto> list = markService.getMyMarkList(dto);
		System.out.println("aaa : "+userid);
		model.addAttribute("StoreList", list);
		model.addAttribute("totalCnt", markService.getTotal(dto));
		return "MARK/Mark_list2";
	}
	
	@RequestMapping("mark/add")
	@ResponseBody
	public HashMap<String, String> addmark(MarkDto dto, HttpServletRequest request) {
		
		// ���ã�⿡ �߰� �Ǿ� �ִ� �������� Ȯ��, 
		// store_mark = "N" �߰��� �ȵǾ� �ִ� ���Զ�� insert
		// store_mark = "Y" �߰��� �Ǿ� ������ alert
		HashMap<String, String> map = new HashMap<String, String>();
		HttpSession session = request.getSession();
		String userid =(String) session.getAttribute("user_id");
		dto.setMark_id(userid);
		
		System.out.println("store_key, mark_id(user_id)---->" + dto);
		boolean flag = markService.findMark(dto);
		
		if(flag) {
			markService.delMark(dto);
			map.put("result", "해제되었습니다.");
			map.put("flag", "true");
			
		} else {
			markService.addMark(dto);
			map.put("result", "추가되었습니다.");
			map.put("flag", "false");
		}
		
		return map;
		
	}	
}
/*
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
	
	@RequestMapping(value = "/mark/list2")
	String Mark_list2(Model model, MarkDto dto)
	{
		dto.setPageSize(12);
		dto.setStart( dto.getPg() * dto.getPageSize());
		
		List<MarkDto> list = markService.getList(dto);
		int cnt = markService.getTotal(dto);
		
		model.addAttribute("markList", list);
		model.addAttribute("totalCnt", cnt);
		
		return "MARK/Mark_list2";
	}
	
	@RequestMapping(value = "/mark/view")
	String mark_view(MarkDto dto, Model model)
	{
		MarkDto resultDto = markService.getView(dto);
		model.addAttribute("markDto", resultDto);
		
		return "MARK/Mark_view";
	}
}
*/
