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
		return sm.selectList("Qna_getList",dto);
	}

	@Override
	public int getTotal(QnaDto dto) {
		// TODO Auto-generated method stub
		return sm.selectOne("Qna_getTotal", dto);
	}

}
