package springmvc.demo.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Cart;
import springmvc.demo.entity.Menus;
import springmvc.demo.entity.Order;
import springmvc.demo.entity.OrderDetail;
import springmvc.demo.entity.Product;

@Repository
public class OrderDetailsDaoImpl extends BaseDao implements OrderDetailsDao {

	@Override
	public void addOrderDetails(OrderDetail cart) {
		  Session currentSession = sessionFactory.getCurrentSession();
          // save/upate the customer ... finally
          currentSession.save(cart);
	}

	@Override
	public List<Object[]> findOrderDetailId(String id) {
		Session currentSession = sessionFactory.getCurrentSession();
		TypedQuery<Object[]> theQuery = currentSession
				.createQuery("select d.orderId.orderId, (d.amount* d.price) as Tong from OrderDetail d \r\n"
						+ "where d.orderId.orderId='"+id+"'");
		// execute query and get result list
		List<Object[]> products = theQuery.getResultList();
		// return the results
		return products;
	}



}
