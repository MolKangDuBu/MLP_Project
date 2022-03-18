package mlp.project.lollipop.NOTICE;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("noticeDao")
public class NoticeDaoImpl implements NoticeDao{

	@Autowired 
	SqlSessionTemplate sm;
	
	@Override
	public List<NoticeDto> getList(NoticeDto dto) {
		return sm.selectList("Notice_getList", dto);
	}

	@Override
	public int getTotal(NoticeDto dto) {
		
		return sm.selectOne("Notice_getTotal", dto);
	}

	@Override
	public NoticeDto getView(NoticeDto dto) {
		
		return  sm.selectOne("Notice_getView", dto);
	}

	@Override
	public void insert(NoticeDto dto) {
		 sm.insert("Notice_insert", dto);
	}

	@Override
	public void update(NoticeDto dto) {
		sm.update("Notice_update", dto);	
	}

	@Override
	public void delte(NoticeDto dto) {
		sm.delete("Notice_delete", dto);
	}

}
