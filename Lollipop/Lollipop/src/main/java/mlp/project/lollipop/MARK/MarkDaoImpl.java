package mlp.project.lollipop.MARK;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import mlp.project.lollipop.STORE.StoreDto;

@Repository("markDao")
public class MarkDaoImpl implements MarkDao{

	@Inject
	private SqlSession sqlSession;


	@Override
	public boolean findMark(MarkDto markDto) {
		String result = sqlSession.selectOne("findMark", markDto);
		return Boolean.parseBoolean(result);
	}

	@Override
	public void addMark(MarkDto markDto) {
		sqlSession.insert("addMark", markDto);
		
	}
	
	@Override
	public List<MarkDto> getMyMarkStore_key(String user_id) {	
		return sqlSession.selectList("getMyMarkStore_key", user_id);
	}

	@Override
	public List<StoreDto> getMyMarkList(MarkDto markDto) {
		return sqlSession.selectList("getMyMarkList", markDto);
	}

	@Override
	public int getTotal(MarkDto dto) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Mark_getTotal", dto);
	}

	@Override
	public List<MarkDto> getlist(MarkDto dto) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Mark_list", dto);
	}

	@Override
	public void delMark(MarkDto markDto) {
		sqlSession.delete("delMark", markDto);
	}

}
