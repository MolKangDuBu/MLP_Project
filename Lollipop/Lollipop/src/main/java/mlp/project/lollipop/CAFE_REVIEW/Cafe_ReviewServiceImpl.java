package mlp.project.lollipop.CAFE_REVIEW;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("reviewService")
public class Cafe_ReviewServiceImpl implements Cafe_ReviewService{

	@Resource(name="reviewDao")
	Cafe_ReviewDao reviewDao;

	@Override
	public List<Cafe_ReviewDto> getList(Cafe_ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewDao.getList(dto);
	}
	
	@Override
	public List<Cafe_ReviewDto> getReviewList(Cafe_ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewDao.getReviewList(dto);
	}

	@Override
	public int getTotal(Cafe_ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewDao.getTotal(dto);
	}

	@Override
	public void insert(Cafe_ReviewDto dto) {
		reviewDao.insert(dto);
		
	}

	@Override
	public void delete(String review_key) {
		reviewDao.delete(review_key);
		
	}


	@Override
	public void update(Cafe_ReviewDto dto) {
		// TODO Auto-generated method stub
		reviewDao.update(dto);
	}

	@Override
	public Cafe_ReviewDto getView(String review_key) {
		return reviewDao.getView(review_key);
	}

	@Override
	public List<Cafe_ReviewDto> getListCat(Cafe_ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewDao.getListCat(dto);
	}

	@Override
	public void increasehit(String id) {
		// TODO Auto-generated method stub
		reviewDao.incresehit(id);
	}


}
