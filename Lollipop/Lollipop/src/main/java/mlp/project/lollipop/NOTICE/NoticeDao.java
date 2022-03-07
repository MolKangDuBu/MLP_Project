package mlp.project.lollipop.NOTICE;

import java.util.List;

public interface NoticeDao {
	List<NoticeDto> getList(NoticeDto dto);
	void insert(NoticeDto dto);
	void insert_reply(NoticeDto dto);
	NoticeDto getView(NoticeDto dto);
	int getTotal(NoticeDto dto);
	void delete(String key);
	void update(NoticeDto dto);
}
