package mlp.project.lollipop.common;


import javax.servlet.http.HttpServletRequest;

//  <%=Pager.makeTag(request, 10, 32)%>


public class Pager {
		
	
	//<a href= .....
	public static String makeTag(HttpServletRequest request , int pageSize , int total) {
		
		//request 媛앹껜媛� �엳�뼱�빞 pg, key, keyword �벑�쓽 �젙蹂대�� 媛��졇�삱 �닔 �엳�떎.
		//pageSize - �븳 �럹�씠吏��떦 異쒕젰�븷 �뜲�씠�꽣 媛쒖닔
		//total - �쟾泥� �뜲�씠�꽣�쓽 媛쒖닔
		//�럹�씠吏� �닔 - total/pageSize 12/10 -> (1.2)�삱由� �궗�슜 -> 2�럹�씠吏� �깮�꽦
		String Tag = "" ; 
		String contextPath = request.getContextPath();
		
		// << < 1 2 3 4 5 6 7 8 9 10 > >> 
		
		int cpage; //�쁽�옱�럹�씠吏� �젙蹂� - board/list?pg=1 pg媛믪쓣 cpage濡� 泥섎━�븳�떎
		// 12/10 -> ceiling(1.2) -> 2   
		int pageTotal; //�쟾泥� �럹�씠吏� 媛쒖닔 
		int pageGroupSize = 5; //洹몃９�쓽 媛쒖닔 - �븳 �솕硫댁뿉 �굹���궪 �럹�씠吏� 理쒕� 媛쒖닔 
		
		//1 ~ 5
		//6 ~ 10
		//11 ~ 15
		int pageGroupStart; //1,6,11,16,... 洹몃９�쓽 �떆�옉媛� 
		int pageGroupEnd;   //5,10,15,....  洹몃９�쓽 醫낅즺媛�
		
		String path="";
		//System.out.println(path);
		String beginLabel 	= "frist";//image  �깭洹�
		String prevLabel 	= "previous"; 
		String nextLabel 	= "next";
		String endLabel 	= "last";	

		
		try {

			StringBuffer sb = new StringBuffer();
			
			//http://localhost:9000/MyHome/freeboard.do?pg=1
			
			String page = request.getParameter("pg") ; //board/list?pg=1
			page = ( page == null ) ? "0" : page ; //null媛� 泥섎━
			cpage = Integer.parseInt(page) ; 

			pageTotal = (int)Math.ceil((total - 1) / pageSize);
			//�럹吏�吏� 媛쒖닔 : �쟾泥� �뜲�씠�꽣 媛쒖닔 123媛� 
			//�븳 �럹�씠吏��떦 10媛쒖뵫 : pageSize=10
			// 123/10 -> 12.3 =>  �삱由� => 13
            
			pageGroupStart = (int) (cpage / pageGroupSize) * pageGroupSize;
			pageGroupEnd = pageGroupStart + pageGroupSize;
			
		
			if (pageGroupEnd > pageTotal) {
				pageGroupEnd = pageTotal + 1;
			}
            //0~4, 5~9, 10~14, 15~19
				 
			boolean hasPreviousPage = cpage - pageGroupSize >= 0;
			//�씠�쟾�럹�씠吏�濡� 媛덇쾶 �엳�뒗媛� �뿬遺�  << < 1 2 3 4 5 > >>
			boolean hasNextPage = pageGroupStart + pageGroupSize < pageTotal;
			//�떎�쓬�럹�씠吏�濡� 媛� �닔 �엳�뒗媛� �뿬遺� 
			
			sb.append("<ul class='pagination' justify-context-center>\r\n") ;  
			
			//  <<  < 
			sb.append((cpage > 0) ? makeLink(0, beginLabel) : 
				        "<li class=\"page-item\"><a class=\"page-link\"  href='javascript:void(0);'>"+beginLabel+"</a></li>\r\n");
			sb.append(hasPreviousPage ? makeLink(pageGroupStart - 1, prevLabel) : 
				        "<li class=\"page-item\"><a class=\"page-link\"  href='javascript:void(0);'>"+prevLabel+"</a></li>\r\n");
			
			for (int i = pageGroupStart; i < pageGroupEnd; i++) {
				if (i == cpage) {
					//sb.append(i + 1); 
					sb.append(makeActiveLink(i, (i + 1) + ""));
				} else {
					sb.append(makeLink(i, (i + 1) + ""));
				}
			}
			

			sb.append(hasNextPage ? makeLink(pageGroupEnd, nextLabel) : 
				"<li class=\"page-item\"> <a class=\"page-link\" href='javascript:void(0);'>"+nextLabel+"</a></li>\r\n");
			sb.append((cpage < pageTotal) ? makeLink(pageTotal, endLabel) : 
				"<li class=\"page-item\"><a class=\"page-link\"  href='javascript:void(0);'>"+endLabel+"</a></li>\r\n");
		
			sb.append("</ul>\r\n") ;  		
			Tag = sb.toString() ; 	
		} catch ( Exception e ) {
			e.printStackTrace() ; 
		}
			
		return Tag ; 
	}

	public static String makeLink(int page, String label) 
	{
		StringBuffer tmp = new StringBuffer();
		tmp.append("<li class=\"page-item\"><a class=\"page-link\"  href=\"javascript:goPage('" + page + "')\">").append(label).append("</a></li>\r\n");
		return tmp.toString();
	}
	
	
	public static String makeActiveLink(int page, String label) 
	{
		StringBuffer tmp = new StringBuffer();
		tmp.append("<li class=\"page-item active\"><a class=\"page-link\"  href=\"javascript:goPage('" + page + "')\">").append(label).append("</a></li>\r\n");
		return tmp.toString();
	}
	
	
	
}
