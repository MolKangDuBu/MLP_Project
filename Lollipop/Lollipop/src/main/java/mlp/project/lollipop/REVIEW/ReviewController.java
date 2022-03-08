package mlp.project.lollipop.REVIEW;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import mlp.project.lollipop.common.FileUploadUtil;

@Controller
public class ReviewController {

	@Resource(name ="reviewService")
	ReviewService reviewservice;
	
	
	@RequestMapping(value = "/Review/list", method=RequestMethod.GET)
	public String Review_list(Model model, ReviewDto dto) {
		
	
		dto.setStart( dto.getPg()*10);
		
		List<ReviewDto> list = reviewservice.getList(dto);
		
		for(ReviewDto tempDto : list) {
			System.out.println(tempDto.getReview_title());
		}
		
		model.addAttribute("ReviewList", list);
		model.addAttribute("totalCnt", reviewservice.getTotal(dto));
		
		return "REVIEW/Cafe_list";
	}
	
	@RequestMapping("/Review/write")
	String Review_write(Model model)
	{
		
		ReviewDto dto = new ReviewDto();
		model.addAttribute("ReviewDto", dto);
		
		return "REVIEW/Cafe_write";
	}	
	
	
	@RequestMapping("/Review/save")
	String Review_save(ReviewDto dto, HttpServletRequest req, MultipartHttpServletRequest multi)
	{
		List<MultipartFile> multiList = new ArrayList<MultipartFile>();
		multiList.add(multi.getFile("upload"));
		
		List<String> fileNameList=new ArrayList<String>();
		
		String path = req.getServletContext().getRealPath("/");
		
		FileUploadUtil.upload( path,  multiList, fileNameList); 
		
		dto.setReview_image1(fileNameList.get(0)); 
		
		reviewservice.insert(dto);
		
		return "redirect:/REVIEW/Cafe_list";
	}
	
	@RequestMapping("/Review/view")
	String Review_view(ReviewDto dto, Model model)
	{
		ReviewDto resultDto = reviewservice.getView(dto);
		model.addAttribute("ReviewDto", resultDto);
		
		return "REVIEW/Cafe_view";
	}	
	
}