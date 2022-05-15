package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.entity.Cart;
import springmvc.demo.entity.Color;
import springmvc.demo.entity.Order;


public interface OrdersDao{

	public void addOrders(Order cart);
	public Order findOrderId(String id);
	public List<Object[]> getDsOrderByStatus(int index, String id) ;
	public int demSLOrderByStatus();
	public void confirm(String id, String string);
	public void cancel(String id, String string);
	public List<Object[]> getDsOrderByStatusCheck(int indexPage, String userId, String tenS);
}
