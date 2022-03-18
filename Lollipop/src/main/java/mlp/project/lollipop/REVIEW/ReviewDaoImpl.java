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
	public List<ReviewDto> getlist(ReviewDto dto) {
		// TODO Auto-generated method stub
		return sm.selectList("Review_list" ,dto);
	}

	@Override
	public int getTotal(ReviewDto dto) {
		// TODO Auto-generated method stub
		
		return sm.selectOne("Review_getTotal", dto);
	}

	@Override
	public void insert(ReviewDto dto) {
		// TODO Auto-generated method stub
		sm.insert("Review_insert", dto);
	}

	@Override
	public ReviewDto getView(String id) {
		// TODO Auto-generated method stub
		return sm.selectOne("Review_getview", id);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		sm.delete("Review_delete", id);
	}

	@Override
	public void update(ReviewDto dto) {
		// TODO Auto-generated method stub
		sm.update("Review_modify", dto);
	}

}
