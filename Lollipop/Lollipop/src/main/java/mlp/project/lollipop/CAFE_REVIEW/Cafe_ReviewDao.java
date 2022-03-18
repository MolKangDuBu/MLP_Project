package mlp.project.lollipop.CAFE_REVIEW;

import java.util.List;

public interface Cafe_ReviewDao {

	List<Cafe_ReviewDto> getList(Cafe_ReviewDto dto);
	List<Cafe_ReviewDto> getListCat(Cafe_ReviewDto dto);
	List<Cafe_ReviewDto> getReviewList(Cafe_ReviewDto dto);
	int getTotal(Cafe_ReviewDto dto);
	void insert(Cafe_ReviewDto dto);
	void delete(String review_key);
	Cafe_ReviewDto getView(Cafe_ReviewDto dto);
	void update(Cafe_ReviewDto dto);
	void incresehit(String id);
}
