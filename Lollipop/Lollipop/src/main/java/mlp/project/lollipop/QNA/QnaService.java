package mlp.project.lollipop.QNA;

import java.util.List;

public interface QnaService {
	List<QnaDto> getList(QnaDto dto);
	int getTotal(QnaDto dto);

}
