package mlp.project.lollipop.STORE;

import java.util.List;

public interface StoreService {

	
	List<StoreDto> getlist(StoreDto dto);
	int getTotal(StoreDto dto);
	void insert(StoreDto dto);
	StoreDto getView(String id);
	void delete(String id);
	void update(StoreDto dto);
}
