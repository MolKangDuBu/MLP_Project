package mlp.project.lollipop.REVIEW;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class ReviewController {

	@Resource(name ="reviewService")
	ReviewService reviewserview;
	
	
	@RequestMapping(value = "/Review/list")
	public String Review_list(Model model, ReviewDto dto) {
		System.out.println(dto.getKey());
		System.out.println(dto.getKeyword());
		dto.setStart(dto.getPg()*10);
		
		List<ReviewDto>list = reviewserview.getlist(dto);
		
		
		for(ReviewDto tempDto :list) {
			System.out.println(tempDto.getReview_title());
		}
		model.addAttribute("ReviewList", list);
		model.addAttribute("totalCnt", reviewserview.getTotal(dto));
		
		return "REVIEW/Play_Review";
	}
	
	
}