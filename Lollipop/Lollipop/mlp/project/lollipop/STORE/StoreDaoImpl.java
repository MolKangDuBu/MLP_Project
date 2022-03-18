package mlp.project.lollipop.STORE;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("storeDao")
public class StoreDaoImpl implements StoreDao{

	
	@Autowired
	SqlSessionTemplate sm;
	@Override
	public List<StoreDto> getlist(StoreDto dto) {
		// TODO Auto-generated method stub
		return sm.selectList("Store_list", dto);
	}

	@Override
	public int getTotal(StoreDto dto) {
		// TODO Auto-generated method stub
		return sm.selectOne("Store_getTotal", dto);
	}

	@Override
	public void insert(StoreDto dto) {
		// TODO Auto-generated method stub
		sm.insert("Store_insert", dto);
	}

	@Override
	public StoreDto getView(String id) {
		// TODO Auto-generated method stub
		return sm.selectOne("Store_getview", id);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		sm.delete("Store_delete", id);
	}

	@Override
	public void update(StoreDto dto) {
		// TODO Auto-generated method stub
		sm.update("Store_modify", dto);
		
	}

}
