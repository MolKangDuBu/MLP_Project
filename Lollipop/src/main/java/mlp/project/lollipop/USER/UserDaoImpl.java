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
			return false; //�ߺ��ƴ�, ��밡���� ���̵���  
		else
			return true; //�̹� ������� 
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
