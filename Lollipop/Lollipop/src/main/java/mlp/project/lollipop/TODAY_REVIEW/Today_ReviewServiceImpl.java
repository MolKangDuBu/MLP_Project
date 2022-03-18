package mlp.project.lollipop.TODAY_REVIEW;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("todayService")
public class Today_ReviewServiceImpl implements Today_ReviewService{

	@Resource(name ="todayDao")
	Today_ReviewDao todaydao;

	@Override
	public List<Today_ReviewDto> getlist(Today_ReviewDto dto) {
		// TODO Auto-generated method stub
		return todaydao.getlist(dto);
	}

	@Override
	public int getTotal(Today_ReviewDto dto) {
		// TODO Auto-generated method stub
		return todaydao.getTotal(dto);
	}


	@Override
	public Today_ReviewDto getView(String id) {
		// TODO Auto-generated method stub
		return todaydao.getView(id);
	}


}
