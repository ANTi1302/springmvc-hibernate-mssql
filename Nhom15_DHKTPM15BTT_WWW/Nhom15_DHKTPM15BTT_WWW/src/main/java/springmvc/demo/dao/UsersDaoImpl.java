package springmvc.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Menus;
import springmvc.demo.entity.Users;

@Repository
public class UsersDaoImpl extends BaseDao implements UsersDao {

//	select * from Menus
	@Override
	public List<Users> getDsUsers() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Users> theQuery = currentSession.createQuery(" from Menus", Users.class);
		// execute query and get result list
		List<Users> menus = theQuery.getResultList();
		// return the results
		return menus;
	}



}
