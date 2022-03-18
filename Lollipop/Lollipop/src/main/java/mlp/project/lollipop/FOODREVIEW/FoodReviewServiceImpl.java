package mlp.project.lollipop.FOODREVIEW;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("foodReviewService")
public class FoodReviewServiceImpl implements FoodReviewService{

	@Resource(name="foodReviewDao")
	FoodReviewDao reviewdao;

	@Override
	public List<FoodReviewDto> getList(FoodReviewDto dto) {
		
		return reviewdao.getList(dto);
	}

	@Override
	public int getTotal(FoodReviewDto dto) {
		
		return reviewdao.getTotal(dto);
	}

	@Override
	public void insert(FoodReviewDto dto) {
		
		reviewdao.insert(dto);
	}

	@Override
	public void update(FoodReviewDto dto) {
		
		reviewdao.update(dto);
	}

	@Override
	public void delete(FoodReviewDto dto) {
		
		reviewdao.delete(dto);
		
	}

	@Override
	public FoodReviewDto getView(FoodReviewDto dto) {
		
		return reviewdao.getView(dto);
	}
}
