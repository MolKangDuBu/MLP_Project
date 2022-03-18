package mlp.project.lollipop.USER;

public interface UserDao {

	boolean IsDuplicate(UserDto dto);
	void Insert(UserDto dto);
	UserDto Findid(UserDto dto); 
	UserDto Findpwd(UserDto dto);
	UserDto Getinfo(UserDto dto);
	void Update(UserDto dto);
}
