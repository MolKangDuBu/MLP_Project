package mlp.project.lollipop.common;


//객체를 안만들고 쓰는 클래스 - 다목적용 클래스
public class StringUtil {

		public static String nullToValue(Object ob, String value) {
			if(ob==null) {
				return value;
			}
			else {
				return ob.toString();
			}
			//어떤 값이 null값이 들어오면 이걸 두번째 파라미터로 전달된 값을 주기 위한 함수
			
			//String pg = request.getParameter("pg"); 
			//if(pg==null) pg="";
			//위에 대신 밑에 코드를 사용
			//String pg = StringUtil.nullToValue(request.getParameter("pg"), "0");
		}
}
