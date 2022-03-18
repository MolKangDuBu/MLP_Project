package mlp.project.lollipop.MARK;

import java.util.List;
<<<<<<< HEAD
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
=======

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
>>>>>>> b0f420b40a1fa4b43dc33107125ed7cab6b2d99b
import org.springframework.stereotype.Repository;

import mlp.project.lollipop.STORE.StoreDto;

@Repository("markDao")
public class MarkDaoImpl implements MarkDao{

<<<<<<< HEAD
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
=======
	@Autowired 
	SqlSessionTemplate sm;
	
	@Override
	public List<MarkDto> getList(MarkDto dto) {
		return sm.selectOne("Mark_getList", dto);
>>>>>>> b0f420b40a1fa4b43dc33107125ed7cab6b2d99b
	}

	@Override
	public int getTotal(MarkDto dto) {
<<<<<<< HEAD
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
=======
		return sm.selectOne("Mark_getTotal", dto);
	}

	@Override
	public void insert(MarkDto dto) {
		sm.insert("Mark_insert", dto);
	}

	@Override
	public void update(MarkDto dto) {
		sm.insert("Mark_update", dto);
	}

	@Override
	public void delete(MarkDto dto) {
		sm.insert("Mark_delete", dto);
	}

	@Override
	public MarkDto getView(MarkDto dto) {
		return sm.selectOne("Mark_getView", dto);
>>>>>>> b0f420b40a1fa4b43dc33107125ed7cab6b2d99b
	}

}
