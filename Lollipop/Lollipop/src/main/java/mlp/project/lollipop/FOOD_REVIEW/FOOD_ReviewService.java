package mlp.project.lollipop.FOOD_REVIEW;

import java.util.List;

public interface FOOD_ReviewService {
	List<FOOD_ReviewDto> getlist(FOOD_ReviewDto dto);
	List<FOOD_ReviewDto> searchlist(FOOD_ReviewDto dto);
	int getTotal(FOOD_ReviewDto dto);
	void insert(FOOD_ReviewDto dto);
	FOOD_ReviewDto getView(String id);
	void delete(String id);
	void update(FOOD_ReviewDto dto);
	void incresehit(String id);
}
