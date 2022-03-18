<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<%@page import="mlp.project.lollipop.NOTICE.*" %>
<%@page import ="mlp.project.lollipop.common.*" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>롤리팝 맛집</title>
    <base href="/">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="og:locale" content="ko_KR">
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,700&amp;display=swap">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<script src="//cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>
	<script type="text/javascript" src="/lollipop/ckfinder/ckfinder.js"></script>
	<%@include file ="../include/board.jsp"  %>

    
   
</head>

<body>


<form name = "writeform" id = "writeform" method="post" enctype = "multipart/form-data">

	<%
	NoticeDto dto = (NoticeDto)request.getAttribute("noticeDto");
	%>
    <div style="width: 50%; margin: auto;">
        <!-- Navigation-->
   
     <%@include file="../include/nav.jsp" %>
      <input type ="hidden" id = "userid" name = "userid" value ="<%=user_id%>">
      <input type ="hidden" id ="Notice_key" name= "Notice_key" value ="<%=dto.getNotice_key()%>">
      
    <app-root _nghost-sc29="" ng-version="9.1.0">
        <!---->
        <router-outlet _ngcontent-sc29=""></router-outlet>
        <app-main-layout _nghost-sc105="">
        
            <!---->
            <app-responsive-container _ngcontent-sc105="" _nghost-sc79="">
                <main _ngcontent-sc105="">
                    <router-outlet _ngcontent-sc105=""></router-outlet>
                    <app-poi-list _nghost-sc102="">
                        <ngx-json-ld _ngcontent-sc102="">
                           
                        </ngx-json-ld>
                        <!---->
                        <!---->
                       <div _ngcontent-sc102="" class="title-container">
                            <div _ngcontent-sc102="" class="short-region-mobile">서울 강남구</div>
                            <h1 _ngcontent-sc102=""><span _ngcontent-sc102="" class="short-region-desktop">글 작성</span>
                                </h1>
                        </div>
                     	<div >
              	
         <table class="table table-hover " _nghost-sc105="">
            <colgroup>
                <col width="25%">
                <col width="*">
            </colgroup>
        
            <tbody>
              <tr>
              
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                     <p>제목</p>
                        <input type="text" class="form-control" id="notice_title" name="notice_title" 
                        placeholder="제목을 입력하세요" value="<%=dto.getNotice_title()%>">
                    </div>
                </td>
              </tr>       
              <tr>
              
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                   <p>작성자</p>
                      <input type = "text" class = "form-control" id = "notice_id" name = "notice_id"
                      placeholder="이름을 입력하세요" value = "<%=user_id%>" readonly>
                    </div>
                </td>
              </tr>      
              <tr>
              
               
              </tr>      
              <tr>
               
                <td>
                <input type = "hidden"  class = "form-control" id = "notice_contents" name = "notice_contents"  value = "aa">
                    <div>
                    	 <p>내용</p>
                     		<textarea id="editor" name = "editor" style="text-align :center;">
      							 
    						</textarea>
							<script>
							var editor = CKEDITOR.editorConfig = function( config ) {
								config.language = 'es';
								config.uiColor = '#F7B42C';
								config.height = 300;
								config.toolbarCanCollapse = true;
								config.extraPlugins = 'uploadimage';
							};

							var editor = CKEDITOR.replace( 'editor' );
							CKFinder.setupCKEditor( editor, '/lollipop/ckfinder' ) ;
							
							</script>
						
                	</div>
                </td>
               
            
              </tr> 
              
                     
            </tbody>
          </table>
</div>
                     	

                       
                       
                       
                       
                       
                        <div _ngcontent-sc102="" class="content-container">
                            <app-poi-item _ngcontent-sc102="" _nghost-sc99="">
                                <div class="container mt-3" style="text-align:right;">
           						 <button  class="btn btn-secondary" type ="button" onclick ="add()">등록</button>
       							</div>
                                <div _ngcontent-sc99="" class="divider-container">
                                    <app-divider _ngcontent-sc99="" _nghost-sc98=""></app-divider>
                                </div>
                            </app-poi-item>
                            
                        </div>
                    </app-poi-list>

                </main>
                <app-footer _ngcontent-sc105="" _nghost-sc92="">
                    <div _ngcontent-sc92="" class="footer-container">
                        <div _ngcontent-sc92="" class="policy-links">
                            <a _ngcontent-sc92="" href="https://www.daangn.com"
                                target="_blank" class="daangn"> 롤리팝 홈페이지 </a> &nbsp; · &nbsp; 
                                <a _ngcontent-sc92="" href="https://www.daangn.com/policy/terms" target="_blank"> 이용약관 </a> &nbsp; · &nbsp; 
                                <a _ngcontent-sc92="" href="https://www.daangn.com/policy/privacy" target="_blank"> 개인정보 취급방침 </a> &nbsp; · &nbsp; 
                                <a _ngcontent-sc92="" href="https://www.daangn.com/policy/location" target="_blank"> 위치기반 서비스 이용약관 </a>
                        </div>
                        <div _ngcontent-sc92="" class="emails"><span _ngcontent-sc92=""> 고객문의 cs@lollipopservice.com
                            </span><span _ngcontent-sc92=""> 제휴문의 contact@lollipop.com </span><span _ngcontent-sc92="">
                                지역광고 ad@lollipop.com </span><span _ngcontent-sc92=""> PR문의 pr@lollipop.com </span>
                        </div>
                        <div _ngcontent-sc92="" class="other-info"> 서울특별시 구로구 디지털로30길 28, 609호 (롤리팝 서비스) 사업자 등록번호 :
                            375-87-00088 직업정보제공사업 신고번호 : J1200020200016 
                        </div>
                        <div _ngcontent-sc92="" class="copyright"> Copyright © Lollipop Market Inc. All rights reserved.
                        </div>
                    </div>
                </app-footer>
            </app-responsive-container>
        </app-main-layout>
        <!---->
    </app-root>
</form>
</body>

</html>


<script>

window.onload = function(){
	   CKEDITOR.editorConfig = function(config){
		   config.enterMode = CKEDITOR.ENTER_BR
	   };
	   CKEDITOR.instances.editor.setData('<%=dto.getNotice_contents()%>');
	 
 };
 
function add(){
	
	   $("#notice_contents").val(CKEDITOR.instances.editor.getData());
		
	   var frm = document.writeform
	   //var frmData = new FormData(document.writeform); 
		frm.action = "<%=request.getContextPath()%>/notice/save";
		frm.method = "post";
		frm.submit();
		

}


</script>

