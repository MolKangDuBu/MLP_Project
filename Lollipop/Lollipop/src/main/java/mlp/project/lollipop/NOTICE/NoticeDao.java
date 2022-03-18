package mlp.project.lollipop.NOTICE;

import java.util.List;

public interface NoticeDao {
	List<NoticeDto> getList(NoticeDto dto);
	int getTotal(NoticeDto dto);
	NoticeDto getView(NoticeDto dto);
	void insert(NoticeDto dto);
	void update(NoticeDto dto);
	void delte(NoticeDto dto);
}
