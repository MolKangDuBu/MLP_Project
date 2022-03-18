package mlp.project.lollipop.PLAY_REVIEW;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("playreviewDao")
public class PLAY_ReviewDaoImpl implements PLAY_ReviewDao{

	@Autowired
	SqlSessionTemplate sm;
	
	@Override
	public List<PLAY_ReviewDto> getlist(PLAY_ReviewDto dto) {
		// TODO Auto-generated method stub
		return sm.selectList("PLAY_Review_list" ,dto);
	}

	@Override
	public List<PLAY_ReviewDto> searchlist(PLAY_ReviewDto dto) {
		// TODO Auto-generated method stub
		return sm.selectList("PLAY_search_list" ,dto);
	}
	@Override
	public int getTotal(PLAY_ReviewDto dto) {
		// TODO Auto-generated method stub
		
		return sm.selectOne("PLAY_Review_getTotal", dto);
	}

	@Override
	public void insert(PLAY_ReviewDto dto) {
		// TODO Auto-generated method stub
		sm.insert("PLAY_Review_insert", dto);
	}

	@Override
	public PLAY_ReviewDto getView(String id) {
		// TODO Auto-generated method stub
		return sm.selectOne("PLAY_Review_getview", id);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		sm.delete("PLAY_Review_delete", id);
	}

	@Override
	public void update(PLAY_ReviewDto dto) {
		// TODO Auto-generated method stub
		sm.update("PLAY_Review_modify", dto);
	}

	@Override
	public void incresehit(String id) {
		// TODO Auto-generated method stub
		sm.update("PLAY_Review_hit", id);
	}


}
