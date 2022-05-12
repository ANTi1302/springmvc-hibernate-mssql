package springmvc.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Branchs;
import springmvc.demo.entity.ProductCategory;

@Repository
public class ProductCategoryDaoImpl extends BaseDao implements ProductCategoryDao {

	@Override
	public void saveProductCategory(ProductCategory theProductCategory) {
		 Session currentSession = sessionFactory.getCurrentSession();
         // save/upate the customer ... finally
         currentSession.saveOrUpdate(theProductCategory);
	}





}
