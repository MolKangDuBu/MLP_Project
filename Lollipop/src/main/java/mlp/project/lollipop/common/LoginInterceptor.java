package mlp.project.lollipop.common;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

//서블릿으로부터 중간에 가로채서 세션에 있는 로그온 정보에 따라서 분기를 결정
// HandlerInterceptorAdapter 상속 필요
public class LoginInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		System.out.println("****************");
		System.out.println("*login*");
		System.out.println("****************");
		//false를 반환하면 요청을 막음
		//모든 url 요청이 오면 이 인터셉터의 preHandler가 호출된다.
		//로그인이 되어 있으면 true를 반환, 원래 작업을 진행함
		//로그인이 안되어 있으면 false를 반환하고 작업을 중단, 로그인 페이지로 이동
		//만들어만 놓고 selvlet-context.xml에서 이 파일을 적용하도록 설정해야함
		Object userid = session.getAttribute("user_id");

		if(userid !=null) {
			return  true;
		}
		
		response.sendRedirect(request.getContextPath()+"/User/login");
		return false;

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}
	

}
