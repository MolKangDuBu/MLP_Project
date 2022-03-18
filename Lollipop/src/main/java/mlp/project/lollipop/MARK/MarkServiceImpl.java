package mlp.project.lollipop.MARK;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("markService")
public class MarkServiceImpl implements MarkService{

	@Resource(name ="markDao")
	MarkDao markDao;
}
