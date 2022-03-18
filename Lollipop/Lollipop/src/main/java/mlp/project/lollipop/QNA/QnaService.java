package mlp.project.lollipop.QNA;

import java.util.List;

public interface QnaService {
	List<QnaDto> getList(QnaDto dto);
	int getTotal(QnaDto dto);
	QnaDto getView(QnaDto dto);
	void insert(QnaDto dto);
	void update(QnaDto dto);
	void delete(QnaDto dto);

}
