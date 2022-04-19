package springmvc.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Cart;
import springmvc.demo.entity.Menus;
import springmvc.demo.entity.Order;
import springmvc.demo.entity.OrderDetail;

@Repository
public class OrderDetailsDaoImpl extends BaseDao implements OrderDetailsDao {

	@Override
	public void addOrderDetails(OrderDetail cart) {
		  Session currentSession = sessionFactory.getCurrentSession();
          // save/upate the customer ... finally
          currentSession.save(cart);
	}

	@Override
	public OrderDetail findOrderDetailId(String id) {
		Session currentSession = sessionFactory.getCurrentSession();
        // now retrieve/read from database using the primary key
		OrderDetail theOrderDetail = currentSession.get(OrderDetail.class, id);
        return theOrderDetail;
	}



}
