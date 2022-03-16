package mlp.project.lollipop.PLAY_REVIEW;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("playreviewService")
public class PLAY_ReviewServiceImpl implements PLAY_ReviewService{

	@Resource(name="playreviewDao")
	PLAY_ReviewDao reviewdao;

	@Override
	public List<PLAY_ReviewDto> getlist(PLAY_ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewdao.getlist(dto);
	}

	@Override
	public int getTotal(PLAY_ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewdao.getTotal(dto);
	}

	@Override
	public void insert(PLAY_ReviewDto dto) {
		// TODO Auto-generated method stub
		reviewdao.insert(dto);
	}

	@Override
	public PLAY_ReviewDto getView(String id) {
		// TODO Auto-generated method stub
		return reviewdao.getView(id);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		reviewdao.delete(id);
	}

	@Override
	public void update(PLAY_ReviewDto dto) {
		// TODO Auto-generated method stub
		reviewdao.update(dto);
	}

	@Override
	public void incresehit(String id) {
		// TODO Auto-generated method stub
		reviewdao.incresehit(id);
	}

	@Override
	public List<PLAY_ReviewDto> searchlist(PLAY_ReviewDto dto) {
		// TODO Auto-generated method stub
		return reviewdao.searchlist(dto);
	}
}
