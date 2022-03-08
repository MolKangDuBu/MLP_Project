package mlp.project.lollipop.REVIEW;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("reviewDao")
public class ReviewDaoImpl implements ReviewDao{
	
	@Autowired
	SqlSessionTemplate sm;

	@Override
	public List<ReviewDto> getList(ReviewDto dto) {
		// TODO Auto-generated method stub
		return sm.selectList("Review_getList", dto);
	}

	@Override
	public int getTotal(ReviewDto dto) {
		// TODO Auto-generated method stub
		return sm.selectOne("Review_getTotal", null);
	}

	@Override
	public void insert(ReviewDto dto) {
		sm.insert("Review_insert", dto);
		
	}

	@Override
	public void delete(ReviewDto dto) {
		sm.delete("Review_delete", dto);
		
	}

	@Override
	public ReviewDto getView(ReviewDto dto) {
		// TODO Auto-generated method stub
		return sm.selectOne("Review_getView", dto);
	}

}
