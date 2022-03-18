package mlp.project.lollipop.TODAY_REVIEW;

import java.util.List;



public interface Today_ReviewDao {

	List<Today_ReviewDto> getlist(Today_ReviewDto dto);
	int getTotal(Today_ReviewDto dto);
	Today_ReviewDto getView(String id);

}
