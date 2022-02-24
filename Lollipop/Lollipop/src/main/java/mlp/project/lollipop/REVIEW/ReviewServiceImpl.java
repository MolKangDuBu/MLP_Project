package mlp.project.lollipop.REVIEW;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{

	@Resource(name="reviewDao")
	ReviewDao reviewdao;
}
