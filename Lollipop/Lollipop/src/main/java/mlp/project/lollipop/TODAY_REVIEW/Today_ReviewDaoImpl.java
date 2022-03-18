package mlp.project.lollipop.TODAY_REVIEW;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("todayDao")
public class Today_ReviewDaoImpl implements Today_ReviewDao{

	
	@Autowired
	SqlSessionTemplate sm;
	@Override
	public List<Today_ReviewDto> getlist(Today_ReviewDto dto) {
		// TODO Auto-generated method stub
		return sm.selectList("Today_list", dto);
	}

	@Override
	public int getTotal(Today_ReviewDto dto) {
		// TODO Auto-generated method stub
		return sm.selectOne("Today_getTotal", dto);
	}


	@Override
	public Today_ReviewDto getView(String id) {
		// TODO Auto-generated method stub
		return sm.selectOne("Today_getview", id);
	}

}
