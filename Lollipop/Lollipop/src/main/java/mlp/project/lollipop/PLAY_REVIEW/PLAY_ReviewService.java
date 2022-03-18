package mlp.project.lollipop.PLAY_REVIEW;

import java.util.List;

public interface PLAY_ReviewService {
	List<PLAY_ReviewDto> getlist(PLAY_ReviewDto dto);
	List<PLAY_ReviewDto> searchlist(PLAY_ReviewDto dto);
	int getTotal(PLAY_ReviewDto dto);
	void insert(PLAY_ReviewDto dto);
	PLAY_ReviewDto getView(String id);
	void delete(String id);
	void update(PLAY_ReviewDto dto);
	void incresehit(String id);
}
