package mlp.project.lollipop.FOODREVIEW;

import java.util.List;

public interface FoodReviewDao {
	List<FoodReviewDto> getList(FoodReviewDto dto);
	int getTotal(FoodReviewDto dto);
	void insert(FoodReviewDto dto);
	void update(FoodReviewDto dto);
	void delete(FoodReviewDto dto);
	FoodReviewDto getView(FoodReviewDto dto);
}
