package mlp.project.lollipop.CAFE_REVIEW;

import java.util.List;

public interface Cafe_ReviewService {
	
	List<Cafe_ReviewDto> getList(Cafe_ReviewDto dto);
	List<Cafe_ReviewDto> getListCat(Cafe_ReviewDto dto);
	int getTotal(Cafe_ReviewDto dto);
	void insert(Cafe_ReviewDto dto);
	void delete(String review_key);
	Cafe_ReviewDto getView(String review_key);
	void update(Cafe_ReviewDto dto);
	void increasehit(String id);
}
