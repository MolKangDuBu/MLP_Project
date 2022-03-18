package mlp.project.lollipop.QNA;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("qnaDao")
public class QnaDaoImpl implements QnaDao{

	@Autowired 
	SqlSessionTemplate sm;
	
	@Override
	public List<QnaDto> getList(QnaDto dto) {
		return sm.selectList("Qna_getList", dto);
	}

	@Override
	public int getTotal(QnaDto dto) {
		
		return sm.selectOne("Qna_getTotal", dto);
	}

	@Override
	public QnaDto getView(QnaDto dto) {
		
		return  sm.selectOne("Qna_getView", dto);
}
	@Override
	public void insert(QnaDto dto) {
		sm.insert("Qna_insert", dto);
		
	}

	@Override
	public void update(QnaDto dto) {
		sm.insert("Qna_update", dto);
		
	}

	@Override
	public void delete(QnaDto dto) {
		sm.insert("Qna_delete", dto);
		
	}

}
