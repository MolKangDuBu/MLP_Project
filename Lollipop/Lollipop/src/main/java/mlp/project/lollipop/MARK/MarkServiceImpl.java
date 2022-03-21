package mlp.project.lollipop.MARK;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import mlp.project.lollipop.STORE.StoreDto;

@Service("markService")
public class MarkServiceImpl implements MarkService{

	@Inject
	private MarkDao markDao;

	@Override
	public boolean findMark(MarkDto markDto) {
		return markDao.findMark(markDto);
	}

	@Override
	public void addMark(MarkDto markDto) {
		markDao.addMark(markDto);
		
	}

	@Override
	public int getTotal(MarkDto dto) {
		// TODO Auto-generated method stub
		return markDao.getTotal(dto);
	}

	@Override
	public List<MarkDto> getlist(MarkDto dto) {
		// TODO Auto-generated method stub
		return markDao.getlist(dto);
	}

	@Override
	public List<MarkDto> getMyMarkStore_key(String user_id) {
		// TODO Auto-generated method stub
		return markDao.getMyMarkStore_key(user_id);
	}

	@Override
	public List<StoreDto> getMyMarkList(MarkDto dto) {
		// TODO Auto-generated method stub
		return markDao.getMyMarkList(dto);
	}

	@Override
	public void delMark(MarkDto markDto) {
		markDao.delMark(markDto);
		
	}

}
