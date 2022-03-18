package mlp.project.lollipop.common;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

//�꽌釉붾┸�쑝濡쒕��꽣 以묎컙�뿉 媛�濡쒖콈�꽌 �꽭�뀡�뿉 �엳�뒗 濡쒓렇�삩 �젙蹂댁뿉 �뵲�씪�꽌 遺꾧린瑜� 寃곗젙
// HandlerInterceptorAdapter �긽�냽 �븘�슂
public class LoginInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		System.out.println("****************");
		System.out.println("*login*");
		System.out.println("****************");
		//false瑜� 諛섑솚�븯硫� �슂泥��쓣 留됱쓬
		//紐⑤뱺 url �슂泥��씠 �삤硫� �씠 �씤�꽣�뀎�꽣�쓽 preHandler媛� �샇異쒕맂�떎.
		//濡쒓렇�씤�씠 �릺�뼱 �엳�쑝硫� true瑜� 諛섑솚, �썝�옒 �옉�뾽�쓣 吏꾪뻾�븿
		//濡쒓렇�씤�씠 �븞�릺�뼱 �엳�쑝硫� false瑜� 諛섑솚�븯怨� �옉�뾽�쓣 以묐떒, 濡쒓렇�씤 �럹�씠吏�濡� �씠�룞
		//留뚮뱾�뼱留� �넃怨� selvlet-context.xml�뿉�꽌 �씠 �뙆�씪�쓣 �쟻�슜�븯�룄濡� �꽕�젙�빐�빞�븿
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
