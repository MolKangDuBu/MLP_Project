package mlp.project.lollipop.MARK;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("markDao")
public class MarkDaoImpl implements MarkDao{

	@Autowired 
	SqlSessionTemplate sm;
	
	@Override
	public List<MarkDto> getList(MarkDto dto) {
		return sm.selectOne("Mark_getList", dto);
	}

	@Override
	public int getTotal(MarkDto dto) {
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
	}

}
