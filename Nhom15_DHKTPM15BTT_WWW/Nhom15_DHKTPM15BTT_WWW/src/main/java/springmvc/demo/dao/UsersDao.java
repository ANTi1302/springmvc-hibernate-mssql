package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.entity.Menus;
import springmvc.demo.entity.Users;

public interface UsersDao{


	public Users timKiemUserLogin(String ten, String pass);

	public Users timKiemUser(String pass);
	
	public Users timKiemUserByPhone(String phone);
	
	public void themUser(Users users2);
	
}
