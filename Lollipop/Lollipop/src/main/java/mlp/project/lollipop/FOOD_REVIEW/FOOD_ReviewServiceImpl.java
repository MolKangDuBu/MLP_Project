package mlp.project.lollipop.FOOD_REVIEW;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("foodreviewService")
public class FOOD_ReviewServiceImpl implements FOOD_ReviewService{

	@Resource(name="foodreviewDao")
	FOOD_ReviewDao reviewdao;

	@Override
	public List<FOOD_ReviewDto> getlist(FOOD_ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewdao.getlist(dto);
	}

	@Override
	public int getTotal(FOOD_ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewdao.getTotal(dto);
	}

	@Override
	public void insert(FOOD_ReviewDto dto) {
		// TODO Auto-generated method stub
		reviewdao.insert(dto);
	}

	@Override
	public FOOD_ReviewDto getView(String id) {
		// TODO Auto-generated method stub
		return reviewdao.getView(id);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		reviewdao.delete(id);
	}

	@Override
	public void update(FOOD_ReviewDto dto) {
		// TODO Auto-generated method stub
		reviewdao.update(dto);
	}

	@Override
	public void incresehit(String id) {
		// TODO Auto-generated method stub
		reviewdao.incresehit(id);
	}

	@Override
	public List<FOOD_ReviewDto> searchlist(FOOD_ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewdao.searchlist(dto);
	}
}
