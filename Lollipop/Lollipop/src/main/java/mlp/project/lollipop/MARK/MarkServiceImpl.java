package mlp.project.lollipop.MARK;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("markService")
public class MarkServiceImpl implements MarkService{

	@Resource(name ="markDao")
	MarkDao markDao;

	@Override
	public List<MarkDto> getList(MarkDto dto) {
		return markDao.getList(dto);
	}

	@Override
	public int getTotal(MarkDto dto) {
		return markDao.getTotal(dto);
	}

	@Override
	public void insert(MarkDto dto) {
		markDao.insert(dto);
	}

	@Override
	public void update(MarkDto dto) {
		markDao.update(dto);
	}

	@Override
	public void delete(MarkDto dto) {
		markDao.delete(dto);
	}

	@Override
	public MarkDto getView(MarkDto dto) {
		return markDao.getView(dto);
	}
}
