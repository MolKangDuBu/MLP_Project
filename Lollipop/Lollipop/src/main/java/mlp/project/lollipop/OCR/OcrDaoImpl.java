package mlp.project.lollipop.OCR;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("ocrdao")
public class OcrDaoImpl implements OcrDao{

	
	@Autowired
	SqlSessionTemplate sm;
	
	@Override
	public String getkey(String bnumber) {
		// TODO Auto-generated method stub
		return sm.selectOne("getStore_key", bnumber);
	}

}
