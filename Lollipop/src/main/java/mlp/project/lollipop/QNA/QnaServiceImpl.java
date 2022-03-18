package mlp.project.lollipop.QNA;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("qnaService")
public class QnaServiceImpl implements QnaService{

	@Resource(name="qnaDao")
	QnaDao qnaDao;
}
