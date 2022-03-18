package mlp.project.lollipop.USER;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

	@Resource(name ="userService")
	UserService userservice;
	
	
	@RequestMapping(value = "/User/login")
	public String User_login() {
		return "USER/Login";
	}
	
	
	@RequestMapping("/User/logout")
	public String member_logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();//세션 데이터 삭제 
		return "redirect:/";
	}
	
	@RequestMapping(value = "/User/login_proc")
	@ResponseBody
	public HashMap<String, String>User_proc(UserDto dto, HttpServletRequest request){
		HashMap<String, String >map = new HashMap<String, String>();
		HttpSession session = request.getSession();
		UserDto resultdto = userservice.Getinfo(dto);
		
		if(resultdto ==null) {
			map.put("flag", "2");
		}else {
			if(resultdto.getUser_password().equals(dto.getUser_password())) {
				map.put("flag", "1");
				session.setAttribute("user_id", resultdto.getUser_id());
				session.setAttribute("user_name", resultdto.getUser_name());
				session.setAttribute("user_phone", resultdto.getUser_phone());
				session.setAttribute("user_mail", resultdto.getUser_mail());
				System.out.println(resultdto.getUser_id());
			}else {
				map.put("flag", "3");
			}
		}
	
		return map;
	}
	
	
	@RequestMapping(value = "/User/findid")

	public String User_findid() {
		return "USER/Findid";
	}
	
	@RequestMapping(value ="/User/findid_proc")
	@ResponseBody
	public HashMap<String, String> findid_proc() {
		HashMap<String, String >map = new HashMap<String, String>();
		map.put("result", "1");
		return map;
	}
	
	@RequestMapping(value = "/User/findpwd")
	public String User_findpwd() {
		return "USER/Findpwd";
	}
	
	@RequestMapping(value ="/User/findpwd_proc")
	@ResponseBody
	public HashMap<String, String> findpwd_proc() {
		HashMap<String, String >map = new HashMap<String, String>();
		map.put("result", "1");
		return map;
	}
	
	
	@RequestMapping(value = "/User/mypage")
	public String User_mypage(Model model,HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("user_id");
//		if(userid == null)
//			return "reditect:/User/login";
		
		UserDto dto = new UserDto();
		dto.setUser_id(userid);
		
		UserDto resultdto = userservice.Getinfo(dto);
		model.addAttribute("userdto", resultdto);
		
		
		return "USER/Mypage";
	}
	
	@RequestMapping(value = "/User/signup")
	public String User_signup() {
		return "USER/Signup";
	}
	
	@RequestMapping(value = "/User/insert",method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String>User_insert(UserDto dto, HttpServletRequest request){
		HashMap<String, String> map = new HashMap<String, String>();
		HttpSession session = request.getSession();
		String userid =(String) session.getAttribute("user_id");
		
		if(userid ==null) {
			userservice.Insert(dto);
			map.put("result", "1");
		}else {
			userservice.Update(dto);
			map.put("flag", "1");
		}
		return map;
	}
	
	
}
