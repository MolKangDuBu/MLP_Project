package mlp.project.lollipop.REVIEW;

import java.util.List;

public interface ReviewDao {

	List<ReviewDto> getList(ReviewDto dto);
	int getTotal(ReviewDto dto);
	void insert(ReviewDto dto);
	void delete(ReviewDto dto);
	ReviewDto getView(ReviewDto dto);
}
