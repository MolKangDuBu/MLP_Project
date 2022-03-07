package mlp.project.lollipop.NOTICE;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{

	// 객체를 주입하는 어노테이션
	// dao = noticeDao; (DI 객체주입)
	@Resource(name ="noticeDao")
	NoticeDao dao;

	@Override
	public List<NoticeDto> getList(NoticeDto dto) {
		
		 return dao.getList(dto);
	}

	@Override
	public void insert(NoticeDto dto) {
		dao.insert(dto);
		
	}

	@Override
	public void insert_reply(NoticeDto dto) {
		dao.insert_reply(dto);
		
	}

	@Override
	public NoticeDto getView(NoticeDto dto) {
	
		return dao.getView(dto);
	}

	@Override
	public int getTotal(NoticeDto dto) {
		return dao.getTotal(dto);
	}

	@Override
	public void delete(String key) {
		dao.delete(key);
		
	}

	@Override
	public void update(NoticeDto dto) {
		dao.update(dto);
	}
}
