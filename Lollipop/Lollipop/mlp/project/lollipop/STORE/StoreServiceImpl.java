package mlp.project.lollipop.STORE;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("storeService")
public class StoreServiceImpl implements StoreService{

	@Resource(name ="storeDao")
	StoreDao storedao;

	@Override
	public List<StoreDto> getlist(StoreDto dto) {
		// TODO Auto-generated method stub
		return storedao.getlist(dto);
	}

	@Override
	public int getTotal(StoreDto dto) {
		// TODO Auto-generated method stub
		return storedao.getTotal(dto);
	}

	@Override
	public void insert(StoreDto dto) {
		// TODO Auto-generated method stub
		storedao.insert(dto);
	}

	@Override
	public StoreDto getView(String id) {
		// TODO Auto-generated method stub
		return storedao.getView(id);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		storedao.delete(id);
	}

	@Override
	public void update(StoreDto dto) {
		// TODO Auto-generated method stub
		storedao.update(dto);
	}
}
