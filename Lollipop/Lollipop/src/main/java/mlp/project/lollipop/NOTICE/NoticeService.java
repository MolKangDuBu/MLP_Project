package mlp.project.lollipop.NOTICE;

import java.util.List;

public interface NoticeService {
	List<NoticeDto> getList(NoticeDto dto);
	int getTotal(NoticeDto dto);
	NoticeDto getView(String id);
	void insert(NoticeDto dto);
	void update(NoticeDto dto);
	void delte(String id);
}
