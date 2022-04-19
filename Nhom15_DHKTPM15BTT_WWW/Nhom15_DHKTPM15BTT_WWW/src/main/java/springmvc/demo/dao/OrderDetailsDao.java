package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.entity.Cart;
import springmvc.demo.entity.Order;
import springmvc.demo.entity.OrderDetail;


public interface OrderDetailsDao{

	public void addOrderDetails(OrderDetail cart);
	public OrderDetail findOrderDetailId(String id);
}
