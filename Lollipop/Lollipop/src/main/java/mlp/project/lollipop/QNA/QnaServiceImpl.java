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
		return qnaDao.getTotal(dto);
	}

	@Override
	public QnaDto getView(QnaDto dto) {
		return qnaDao.getView(dto);
	}

	@Override
	public void insert(QnaDto dto) {
		qnaDao.insert(dto);
		
	}

	@Override
	public void update(QnaDto dto) {
		qnaDao.update(dto);
		
	}

	@Override
	public void delete(QnaDto dto) {
		qnaDao.delete(dto);
		
	}
}
