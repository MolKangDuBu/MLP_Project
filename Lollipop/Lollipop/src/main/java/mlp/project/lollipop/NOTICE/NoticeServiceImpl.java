package mlp.project.lollipop.NOTICE;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{

	
	@Resource(name ="noticeDao")
	NoticeDao noticedao;

	@Override
	public List<NoticeDto> getList(NoticeDto dto) {
		return noticedao.getList(dto);
	}

	@Override
	public int getTotal(NoticeDto dto) {
		return noticedao.getTotal(dto);
	}

	@Override
	public NoticeDto getView(NoticeDto dto) {
		return noticedao.getView(dto);
	}

	@Override
	public void insert(NoticeDto dto) {
		noticedao.insert(dto);
	}

	@Override
	public void update(NoticeDto dto) {
		noticedao.update(dto);
	}

	@Override
	public void delte(NoticeDto dto) {
		noticedao.delte(dto);
	}
}







