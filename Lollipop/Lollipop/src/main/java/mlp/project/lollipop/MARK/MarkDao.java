package mlp.project.lollipop.MARK;

import java.util.List;

public interface MarkDao {
	List<MarkDto> getList(MarkDto dto);
	int getTotal(MarkDto dto);
	void insert(MarkDto dto );
	void update(MarkDto dto );
	void delete(MarkDto dto );
	MarkDto getView(MarkDto dto);
}
