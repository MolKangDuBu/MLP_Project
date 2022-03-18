package mlp.project.lollipop.USER;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource(name="userDao")
	UserDao userdao;

	@Override
	public void Insert(UserDto dto) {
		// TODO Auto-generated method stub
		userdao.Insert(dto);
	}

	@Override
	public UserDto Findid(UserDto dto) {
		// TODO Auto-generated method stub
		return userdao.Findid(dto);
	}

	@Override
	public UserDto Findpwd(UserDto dto) {
		// TODO Auto-generated method stub
		return userdao.Findpwd(dto);
	}

	@Override
	public UserDto Getinfo(UserDto dto) {
		// TODO Auto-generated method stub
		return userdao.Getinfo(dto);
	}

	@Override
	public void Update(UserDto dto) {
		// TODO Auto-generated method stub
		userdao.Update(dto);
	}
}
