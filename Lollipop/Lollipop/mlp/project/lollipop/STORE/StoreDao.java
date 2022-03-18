package mlp.project.lollipop.STORE;

import java.util.List;

import mlp.project.lollipop.STORE.StoreDto;

public interface StoreDao {

	List<StoreDto> getlist(StoreDto dto);
	int getTotal(StoreDto dto);
	void insert(StoreDto dto);
	StoreDto getView(String id);
	void delete(String id);
	void update(StoreDto dto);
}
