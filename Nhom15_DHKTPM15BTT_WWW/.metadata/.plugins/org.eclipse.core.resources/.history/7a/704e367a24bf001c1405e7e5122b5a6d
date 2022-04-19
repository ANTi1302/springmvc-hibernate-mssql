package springmvc.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Cart;
import springmvc.demo.entity.Menus;
import springmvc.demo.entity.Order;

@Repository
public class OrdersDaoImpl extends BaseDao implements OrdersDao {

	@Override
	public void addOrders(Order cart) {
		  Session currentSession = sessionFactory.getCurrentSession();
          // save/upate the customer ... finally
          currentSession.save(cart);
	}



}
