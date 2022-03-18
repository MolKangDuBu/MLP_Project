package mlp.project.lollipop.MARK;

import java.util.List;
<<<<<<< HEAD
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
=======

public interface MarkDao {
	List<MarkDto> getList(MarkDto dto);
	int getTotal(MarkDto dto);
	void insert(MarkDto dto );
	void update(MarkDto dto );
	void delete(MarkDto dto );
	MarkDto getView(MarkDto dto);
>>>>>>> b0f420b40a1fa4b43dc33107125ed7cab6b2d99b
}
