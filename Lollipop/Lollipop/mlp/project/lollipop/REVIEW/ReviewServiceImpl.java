package mlp.project.lollipop.REVIEW;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{

	@Resource(name="reviewDao")
	ReviewDao reviewdao;

	@Override
	public List<ReviewDto> getlist(ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewdao.getlist(dto);
	}

	@Override
	public int getTotal(ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewdao.getTotal(dto);
	}

	@Override
	public void insert(ReviewDto dto) {
		// TODO Auto-generated method stub
		reviewdao.insert(dto);
	}

	@Override
	public ReviewDto getView(String id) {
		// TODO Auto-generated method stub
		return reviewdao.getView(id);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		reviewdao.delete(id);
	}

	@Override
	public void update(ReviewDto dto) {
		// TODO Auto-generated method stub
		reviewdao.update(dto);
	}
}
