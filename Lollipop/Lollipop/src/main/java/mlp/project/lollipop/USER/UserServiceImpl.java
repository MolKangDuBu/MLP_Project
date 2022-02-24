package mlp.project.lollipop.USER;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource(name="userDao")
	UserDao userdao;
}
