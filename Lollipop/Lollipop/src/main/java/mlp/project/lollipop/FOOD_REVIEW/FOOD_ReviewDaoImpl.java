package mlp.project.lollipop.FOOD_REVIEW;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("foodreviewDao")
public class FOOD_ReviewDaoImpl implements FOOD_ReviewDao{

	@Autowired
	SqlSessionTemplate sm;
	
	@Override
	public List<FOOD_ReviewDto> getlist(FOOD_ReviewDto dto) {
		// TODO Auto-generated method stub
		return sm.selectList("FOOD_Review_list" ,dto);
	}

	@Override
	public List<FOOD_ReviewDto> searchlist(FOOD_ReviewDto dto) {
		// TODO Auto-generated method stub
		return sm.selectList("FOOD_search_list" ,dto);
	}
	@Override
	public int getTotal(FOOD_ReviewDto dto) {
		// TODO Auto-generated method stub
		
		return sm.selectOne("FOOD_Review_getTotal", dto);
	}

	@Override
	public void insert(FOOD_ReviewDto dto) {
		// TODO Auto-generated method stub
		sm.insert("FOOD_Review_insert", dto);
	}

	@Override
	public FOOD_ReviewDto getView(String id) {
		// TODO Auto-generated method stub
		return sm.selectOne("FOOD_Review_getview", id);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		sm.delete("FOOD_Review_delete", id);
	}

	@Override
	public void update(FOOD_ReviewDto dto) {
		// TODO Auto-generated method stub
		sm.update("FOOD_Review_modify", dto);
	}

	@Override
	public void incresehit(String id) {
		// TODO Auto-generated method stub
		sm.update("FOOD_Review_hit", id);
	}


}
