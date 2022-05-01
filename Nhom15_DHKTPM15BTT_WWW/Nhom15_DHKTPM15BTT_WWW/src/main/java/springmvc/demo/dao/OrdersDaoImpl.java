package springmvc.demo.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Branchs;
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

	@Override
	public Order findOrderId(String id) {
		Session currentSession = sessionFactory.getCurrentSession();
        // now retrieve/read from database using the primary key
		Order theOrder = currentSession.get(Order.class, id);
        return theOrder;
	}
//	SELECT  Orders.order_id 
//	FROM     Orders INNER JOIN
//    Order_Detail ON Orders.order_id = Order_Detail.order_id
//	   where [status]='check'
//GROUP BY Orders.order_id

	@Override
	public List<Object[]> getDsOrderByStatus(int index,String id) {
		Session currentSession = sessionFactory.getCurrentSession();
		String hql="SELECT  o.orderId ,o.user.firstName,o.user.lastName, o.createdAt, o.updateAt, o.status,sum(d.amount* d.price)\r\n"
				+ "FROM     Order o INNER JOIN\r\n"
				+ "                  OrderDetail d ON o.orderId = d.orderId.orderId\r\n"
				+ "				   where o.status='"+id+"'\r\n"
				+ "GROUP BY  o.orderId ,o.user.firstName,o.user.lastName, o.createdAt, o.updateAt, o.status";
		// execute query and get result list
		TypedQuery<Object[]> query=currentSession.createQuery(hql,Object[].class).setHibernateFirstResult(((index-1)*6)).setMaxResults(6);
		// return the results
		List<Object[]> productCategories =  query.getResultList();
		return productCategories;
	}

	@Override
	public int demSLOrderByStatus(String id) {
		try {
			String query = "select count(*)from Orders where status='"+id+"'";
			Session currentSession = sessionFactory.getCurrentSession();

			int soHoaDon = (int) currentSession.createNativeQuery(query).getSingleResult();
			// return the results
			return soHoaDon;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}


}
