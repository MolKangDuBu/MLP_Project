package mlp.project.lollipop.MARK;

import java.util.List;
import java.util.Map;

import mlp.project.lollipop.STORE.StoreDto;

public interface MarkDao {
	boolean findMark(MarkDto markDto);
	void addMark(MarkDto markDto);
	void delMark(MarkDto markDto);
	List<MarkDto> getlist(MarkDto dto);
	List<MarkDto> getMyMarkStore_key(String user_id);
	List<StoreDto> getMyMarkList(MarkDto dto);
	int getTotal(MarkDto dto);
}
