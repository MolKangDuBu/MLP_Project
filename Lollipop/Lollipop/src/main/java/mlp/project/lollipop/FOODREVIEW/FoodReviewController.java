package mlp.project.lollipop.FOODREVIEW;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import java.util.List;
import mlp.project.lollipop.common.FileUploadUtil;

@Controller
public class FoodReviewController {

	@Resource(name ="foodReviewService")
	FoodReviewService reviewService;
	
		@RequestMapping(value = "/foodreview/list")
	public String Review_list(Model model, FoodReviewDto dto) {
			
		dto.setStart(dto.getPg()*10);
		
		model.addAttribute("ReviewList", reviewService.getList(dto));
		model.addAttribute("totalCnt", reviewService.getTotal(dto));
		return "FOODREVIEW/Food_Review";
	}
		
		//http://localhost:9000/lollipop/foodreview/write
		@RequestMapping(value="/foodreview/write")
		public String write(Model model)
		{
			FoodReviewDto dto = new FoodReviewDto();
			
			model.addAttribute("reviewDto", dto);
			return "/FOODREVIEW/Food_write";
		}
		
		
		
		@RequestMapping(value="/foodreview/save")
		public String save(FoodReviewDto dto, HttpServletRequest req, MultipartHttpServletRequest multi)
		{
			
			//파라미터 넘어오는지 확인하기
			System.out.println("save");
			System.out.println(dto.getReview_title());
			System.out.println(dto.getReview_contents());
			System.out.println(dto.getReview_id());
			
			//
			  //
	        List<MultipartFile> multiList = new ArrayList<MultipartFile>();
			 
			//null 값을 확인하여 추가
			  //null값을 확인하여 추가
	        for(int i =1; i<=3;i++) {
	        	if(multi.getFile("upload"+i).getSize()!=0) {
	        		multiList.add(multi.getFile("upload"+i));
	        	}
		    }
			
			List<String> fileNameList = new ArrayList<String>();
			String path = req.getServletContext().getRealPath("/")+"food";
			//Ststem.out.println("물리적위치값 : " + path);
			FileUploadUtil.upload(path,  multiList,  fileNameList);
			
			//이미지 파일명은 따로 추가
			for(int i = 0; i<fileNameList.size();i++) {
				System.out.println("파일명들 : "+fileNameList.get(i)+"index값 :"+ i);
			}
			
			
			
			//파일 개수에 따라 입력을 달리한다.
			switch(fileNameList.size() ) {
			case 1:
				dto.setReview_image1(fileNameList.get(0));
				break;
			case 2:
				dto.setReview_image1(fileNameList.get(0));
				dto.setReview_image2(fileNameList.get(1));
				break;
			case 3:
				dto.setReview_image1(fileNameList.get(0));
				dto.setReview_image2(fileNameList.get(1));
				dto.setReview_image3(fileNameList.get(2));
				break;
				default:
					break;
			
			}
			if(dto.getReview_key()>=1)  {//이미 등록이 되어 있으면 수정
				reviewService.update(dto);
			}else {
				reviewService.insert(dto);
			}
			return "redirect:/foodreview/list";
				}
}