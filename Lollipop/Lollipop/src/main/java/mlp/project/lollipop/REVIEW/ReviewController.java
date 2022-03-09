package mlp.project.lollipop.REVIEW;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import mlp.project.lollipop.STORE.StoreService;
import mlp.project.lollipop.common.FileUploadUtil;



@Controller
public class ReviewController {

	@Resource(name ="reviewService")
	ReviewService reviewservice;
	StoreService storeservice;
	
	@RequestMapping(value = "/Review/list")
	public String Review_list(Model model, ReviewDto dto) {
		System.out.println(dto.getKey());
		System.out.println(dto.getKeyword());
		dto.setStart(dto.getPg()*10);
		
		List<ReviewDto>list = reviewservice.getlist(dto);
		
		model.addAttribute("ReviewList", list);
		model.addAttribute("totalCnt", reviewservice.getTotal(dto));
		
		return "REVIEW/Play_Review";
	}
	
	@RequestMapping(value="/Review/view")
	public String Review_view(String id, Model model) {
		
		ReviewDto dto = reviewservice.getView(id);
		model.addAttribute("ReviewDto", dto);
		return "REVIEW/Play_view";
	}
	
	@RequestMapping(value="/Review/write")
	public String Review_write(Model model) {
		
		ReviewDto dto = new ReviewDto();
		model.addAttribute("reviewDto", dto);
		return "REVIEW/Play_write";
	}

	
	@RequestMapping(value="/Review/save")
	public String Review_save(ReviewDto dto, HttpServletRequest req, MultipartHttpServletRequest multi) {
	
		HashMap<String, String >map = new HashMap<String, String>();
		System.out.println("save");
		System.out.println(dto.getReview_title());
		System.out.println(dto.getReview_contents());
		System.out.println(dto.getReview_id());
		
		map.put("result", "1");
		
		  List<MultipartFile>multiList = new ArrayList<MultipartFile>();
		  multiList.add(multi.getFile("upload1"));
		  multiList.add(multi.getFile("upload2"));
		  multiList.add(multi.getFile("upload3"));
		  
		  List<String>fileNameList = new ArrayList<String>();
		  String path = req.getServletContext().getRealPath("/");
		  System.out.println("물리적위치값 : "+path);
		  FileUploadUtil.upload(path, multiList, fileNameList);
		  
	      dto.setReview_image1(fileNameList.get(0)); //이미지 파일명은 따로 추가
	      dto.setReview_image2(fileNameList.get(1));
	      dto.setReview_image3(fileNameList.get(2));
	      
//	      if(dto.getId().equals("")) {
//	    	  	reviewservice.insert(dto);
//			}else {
//				reviewservice.update(dto);
//			}
	      System.out.println("test 1: "+dto.getReview_image1());
		  System.out.println("test 2: "+dto.getReview_image2());
		  System.out.println("test 3: "+dto.getReview_image3());
		  
	      return "REVIEW/Play_view";

	}
	
	
	
	
}