package springmvc.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Cart;
import springmvc.demo.entity.Menus;

@Repository
public class ProductCartsDaoImpl extends BaseDao implements ProductCartsDao {

	@Override
	public void addProductCarts(List<Object> cart) {
		  Session currentSession = sessionFactory.getCurrentSession();
          // save/upate the customer ... finally
          currentSession.saveOrUpdate(cart);
	}


}
