package mlp.project.lollipop.FOODREVIEW;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("foodReviewDao")
public class FoodReviewDaoImpl implements FoodReviewDao{
    
	//ctrl-shift- o
	@Autowired
	SqlSessionTemplate sm;
	
	@Override
	public List<FoodReviewDto> getList(FoodReviewDto dto) {
		// 여러개의 건수를 가져갈때는 selectList
		return sm.selectList("FoodReview_getlist",dto);
		
		
	}

	@Override
	public int getTotal(FoodReviewDto dto) {
		
		return sm.selectOne("FoodReview_getTotal",dto);
	}

	@Override
	public void insert(FoodReviewDto dto) {
		
		sm.insert("FoodReview_insert",dto);
	}

	@Override
	public void update(FoodReviewDto dto) {
		
		sm.update("FoodReview_modify",dto);
		
	}

	@Override
	public void delete(FoodReviewDto dto) {
		
		sm.delete("FoodReview_delete",dto);
		
	}

	@Override
	public FoodReviewDto getView(FoodReviewDto dto) {
		
		return sm.selectOne("FoodReview_getview",dto);
	}
	

}
