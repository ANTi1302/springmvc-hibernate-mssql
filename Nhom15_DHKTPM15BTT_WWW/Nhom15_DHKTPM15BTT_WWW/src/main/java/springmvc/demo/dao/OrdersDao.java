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
}
