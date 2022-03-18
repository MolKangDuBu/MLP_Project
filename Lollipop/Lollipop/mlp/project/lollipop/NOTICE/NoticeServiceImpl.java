package mlp.project.lollipop.NOTICE;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{

	
	@Resource(name ="noticeDao")
	NoticeDao noticedao;
}
