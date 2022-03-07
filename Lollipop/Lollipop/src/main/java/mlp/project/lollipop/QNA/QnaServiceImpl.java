package mlp.project.lollipop.QNA;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("qnaService")
public class QnaServiceImpl implements QnaService{

	@Resource(name="qnaDao")
	QnaDao qnaDao;

	@Override
	public List<QnaDto> getList(QnaDto dto) {
		return qnaDao.getList(dto);
	}

	@Override
	public int getTotal(QnaDto dto) {
		// TODO Auto-generated method stub
		return qnaDao.getTotal(dto);
	}
}
