package mlp.project.lollipop.CAFE_REVIEW;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("reviewDao")
public class Cafe_ReviewDaoImpl implements Cafe_ReviewDao{
	
	@Autowired
	SqlSessionTemplate sm;

	@Override
	public List<Cafe_ReviewDto> getList(Cafe_ReviewDto dto) {
		// TODO Auto-generated method stub
		return sm.selectList("Cafe_Review_getList", dto);
	}
	
	@Override
	public List<Cafe_ReviewDto> getReviewList(Cafe_ReviewDto dto) {
		// TODO Auto-generated method stub
		return sm.selectList("Cafe_Review_reviewlist", dto);
	}

	@Override
	public int getTotal(Cafe_ReviewDto dto) {
		// TODO Auto-generated method stub
		return sm.selectOne("Review_getTotal", dto);
	}

	@Override
	public void insert(Cafe_ReviewDto dto) {
		sm.insert("Review_insert", dto);
		
	}

	@Override
	public void delete(String review_key) {
		sm.delete("Review_delete", review_key);
		
	}

	@Override
	public Cafe_ReviewDto getView(String review_key) {
		// TODO Auto-generated method stub
		return sm.selectOne("Review_getView", review_key);
	}

	@Override
	public void update(Cafe_ReviewDto dto) {
		// TODO Auto-generated method stub
		sm.update("Review_modify",dto);
	}

	@Override
	public List<Cafe_ReviewDto> getListCat(Cafe_ReviewDto dto) {
		// TODO Auto-generated method stub
		return sm.selectList("category", dto);
	}

	@Override
	public void incresehit(String id) {
		// TODO Auto-generated method stub
		sm.update("Cafe_Review_hit", id);
		
	}

	

}
