package mlp.project.lollipop.USER;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class UserDaoImpl implements UserDao{

	@Autowired
	SqlSessionTemplate sm;
	
	
	@Override
	public boolean IsDuplicate(UserDto dto) {
		int cnt = sm.selectOne("User_isduplicate", dto);

		if(cnt==0)
			return false; //占쌩븝옙占싣댐옙, 占쏙옙諛∽옙占쏙옙占� 占쏙옙占싱듸옙占쏙옙  
		else
			return true; //占싱뱄옙 占쏙옙占쏙옙占쏙옙占� 
	}

	@Override
	public void Insert(UserDto dto) {
		// TODO Auto-generated method stub
		sm.insert("User_insert", dto);
	}
	
	@Override
	public void Update(UserDto dto) {
		// TODO Auto-generated method stub
		sm.update("User_update", dto);
	}

	@Override
	public UserDto Findid(UserDto dto) {
		// TODO Auto-generated method stub
		return sm.selectOne("User_findid", dto);
	}

	@Override
	public UserDto Findpwd(UserDto dto) {
		// TODO Auto-generated method stub
		return sm.selectOne("User_findpwd", dto);
	}

	@Override
	public UserDto Getinfo(UserDto dto) {
		// TODO Auto-generated method stub
		return sm.selectOne("User_info", dto);
	}

}
