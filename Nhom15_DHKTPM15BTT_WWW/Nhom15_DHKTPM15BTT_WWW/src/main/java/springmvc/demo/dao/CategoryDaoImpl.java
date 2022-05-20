package springmvc.demo.dao;

import java.util.List;

import javax.persistence.TypedQuery;

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

	@Override
	public List<Category> getDsCategory(int index) {
		Session currentSession = sessionFactory.getCurrentSession();
		TypedQuery<Category> theQuery = currentSession.createQuery(" from Category", Category.class).setHibernateFirstResult(((index-1)*6)).setMaxResults(6);
		// execute query and get result list
		List<Category> Category = theQuery.getResultList();
		// return the results
		return Category;
	}

	@Override
	public int demSLCategory() {
		try {
			String query = "SELECT count(category_id) FROM Category";
			Session currentSession = sessionFactory.getCurrentSession();

			int soHoaDon = (int) currentSession.createNativeQuery(query).getSingleResult();
			// return the results
			return soHoaDon;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public void saveCategory(Category theCategory) {
		Session currentSession = sessionFactory.getCurrentSession();
		
        currentSession.saveOrUpdate(theCategory);		
	}

	@Override
	public Category getCategory(String theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Category theCategory = currentSession.get(Category.class, theId);
		return theCategory;
	}

	@Override
	public void deleteCategory(String theId) {
		Session session = sessionFactory.getCurrentSession();
		Category category = session.byId(Category.class).load(theId);
		session.delete(category);		
	}

	@Override
	public List<Object[]> getDsCategorySearch(int indexPage, String tenS) {
		// TODO Auto-generated method stub
				Session currentSession = sessionFactory.getCurrentSession();
				TypedQuery<Object[]> theQuery = currentSession.createQuery(" from Category where name  like '%"+tenS+"%'",Object[].class).setHibernateFirstResult(((indexPage-1)*6)).setMaxResults(6);
				// execute query and get result list
				List<Object[]> categorys = theQuery.getResultList();
				// return the results
				return categorys;
	}



}
