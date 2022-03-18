package mlp.project.lollipop.MARK;

<<<<<<< HEAD
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
=======
import java.util.List;

import javax.annotation.Resource;
>>>>>>> b0f420b40a1fa4b43dc33107125ed7cab6b2d99b

import org.springframework.stereotype.Service;

import mlp.project.lollipop.STORE.StoreDto;

@Service("markService")
public class MarkServiceImpl implements MarkService{

<<<<<<< HEAD
	@Inject
	private MarkDao markDao;

	@Override
	public boolean findMark(MarkDto markDto) {
		return markDao.findMark(markDto);
	}

	@Override
	public void addMark(MarkDto markDto) {
		markDao.addMark(markDto);
		
=======
	@Resource(name ="markDao")
	MarkDao markDao;

	@Override
	public List<MarkDto> getList(MarkDto dto) {
		return markDao.getList(dto);
>>>>>>> b0f420b40a1fa4b43dc33107125ed7cab6b2d99b
	}

	@Override
	public int getTotal(MarkDto dto) {
<<<<<<< HEAD
		// TODO Auto-generated method stub
=======
>>>>>>> b0f420b40a1fa4b43dc33107125ed7cab6b2d99b
		return markDao.getTotal(dto);
	}

	@Override
<<<<<<< HEAD
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

=======
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
>>>>>>> b0f420b40a1fa4b43dc33107125ed7cab6b2d99b
}
