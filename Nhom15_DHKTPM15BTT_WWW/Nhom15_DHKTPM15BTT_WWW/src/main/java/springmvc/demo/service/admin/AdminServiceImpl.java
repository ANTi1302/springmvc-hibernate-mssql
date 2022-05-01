package springmvc.demo.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.demo.dao.OrderDetailsDao;
import springmvc.demo.dao.OrdersDao;
import springmvc.demo.entity.Order;
import springmvc.demo.entity.OrderDetail;

@Service
@Transactional
public class AdminServiceImpl implements AdminService{

	@Autowired
	private OrdersDao ordersDao;
	@Autowired
	private OrderDetailsDao orderDetailsDao;
	@Override
	public List<Object[]> getDsOrderByStatus(int index,String id) {
		// TODO Auto-generated method stub
		return ordersDao.getDsOrderByStatus(index,id);
	}
	@Override
	public int demSLOrderByStatus(String id) {
		// TODO Auto-generated method stub
		return ordersDao.demSLOrderByStatus(id);
	}
	@Override
	public List<Object[]> findOrderDetailId(String id) {
		// TODO Auto-generated method stub
		return orderDetailsDao.findOrderDetailId(id);
	}

}