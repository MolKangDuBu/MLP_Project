package mlp.project.lollipop.REVIEW;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{

	@Resource(name="reviewDao")
	ReviewDao reviewDao;

	@Override
	public List<ReviewDto> getList(ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewDao.getList(dto);
	}

	@Override
	public int getTotal(ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewDao.getTotal(dto);
	}

	@Override
	public void insert(ReviewDto dto) {
		reviewDao.insert(dto);
		
	}

	@Override
	public void delete(ReviewDto dto) {
		reviewDao.delete(dto);
		
	}

	@Override
	public ReviewDto getView(ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewDao.getView(dto);
	}
}
