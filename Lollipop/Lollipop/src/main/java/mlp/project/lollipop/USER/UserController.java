package mlp.project.lollipop.USER;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@Resource(name ="userService")
	UserService userservice;
	
	
	@RequestMapping(value = "/User/login")
	public String User_login() {
		return "USER/Login";
	}
	
	@RequestMapping(value = "/User/findpwd")
	public String User_findpwd() {
		return "USER/Findpwd";
	}
	
	@RequestMapping(value = "/User/mypage")
	public String User_mypage() {
		return "USER/Mypage";
	}
	
	@RequestMapping(value = "/User/signup")
	public String User_signup() {
		return "USER/Signup";
	}
}
