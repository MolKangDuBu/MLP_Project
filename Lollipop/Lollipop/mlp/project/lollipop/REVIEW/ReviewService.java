package mlp.project.lollipop.REVIEW;

import java.util.List;

public interface ReviewService {
	List<ReviewDto> getlist(ReviewDto dto);
	int getTotal(ReviewDto dto);
	void insert(ReviewDto dto);
	ReviewDto getView(String id);
	void delete(String id);
	void update(ReviewDto dto);
}
