package mlp.project.lollipop.REVIEW;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {

	@Resource(name ="reviewService")
	ReviewService reviewserview;
	
	
	@RequestMapping(value = "/Review/list")
	public String Review_list() {
		return "REVIEW/Review";
	}
}