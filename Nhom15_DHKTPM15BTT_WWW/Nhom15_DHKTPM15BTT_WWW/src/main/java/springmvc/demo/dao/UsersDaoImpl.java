package springmvc.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Menus;
import springmvc.demo.entity.Users;

@Repository
public class UsersDaoImpl extends BaseDao implements UsersDao {

	@Override
	public Users timKiemUserLogin(String ten, String pass) {
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			Query<Users> theQuery = currentSession.createQuery(
					" from Users where phone='" + ten + "' and password='" + pass + "'",
					Users.class);
			// execute query and get result list
			Users menus = theQuery.getSingleResult();
			// return the results
			return menus;
		} catch (Exception e) {
			return null;
		}

	}

	@Override
	public Users timKiemUser(String ten, String pass) {
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			Query<Users> theQuery = currentSession.createQuery(
					" from Users where first_Name='" + ten + "' and access_tokenID='" + pass + "'",
					Users.class);
			// execute query and get result list
			Users menus = theQuery.getSingleResult();
			// return the results
			return menus;
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public void themUser(Users users2) {
		 Session currentSession = sessionFactory.getCurrentSession();
         currentSession.save(users2);		
	}

	@Override
	public Users timKiemUserByPhone(String phone) {
		Session currentSession=sessionFactory.getCurrentSession();
		Query<Users> query=currentSession.createQuery("from Users where phone=:phone", Users.class);
		query.setParameter("phone", phone.trim());
		Users students=query.getSingleResult();
		return students;
	}

}
