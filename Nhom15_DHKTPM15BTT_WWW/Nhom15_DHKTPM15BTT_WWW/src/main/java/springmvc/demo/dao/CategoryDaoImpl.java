package springmvc.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Category;

@Repository
public class CategoryDaoImpl extends BaseDao implements CategoryDao {

//	select * from Category
	@Override
	public List<Category> getDsCategory() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Category> theQuery = currentSession.createQuery(" from Category", Category.class);
		// execute query and get result list
		List<Category> Category = theQuery.getResultList();
		// return the results
		return Category;
	}



}