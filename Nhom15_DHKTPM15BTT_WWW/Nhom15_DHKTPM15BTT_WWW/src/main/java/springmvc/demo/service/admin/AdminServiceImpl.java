package springmvc.demo.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.demo.dao.CategoryDao;
import springmvc.demo.dao.OrderDetailsDao;
import springmvc.demo.dao.OrdersDao;
import springmvc.demo.dao.VouchersDao;
import springmvc.demo.entity.Category;
import springmvc.demo.entity.Order;
import springmvc.demo.entity.OrderDetail;
import springmvc.demo.entity.Voucher;

@Service
@Transactional
public class AdminServiceImpl implements AdminService{

	@Autowired
	private OrdersDao ordersDao;
	@Autowired
	private OrderDetailsDao orderDetailsDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private VouchersDao vouchersDao;
	@Override
	public List<Object[]> getDsOrderByStatus(int index) {
		// TODO Auto-generated method stub
		return ordersDao.getDsOrderByStatus(index);
	}
	@Override
	public int demSLOrderByStatus() {
		// TODO Auto-generated method stub
		return ordersDao.demSLOrderByStatus();
	}
	@Override
	public List<Object[]> findOrderDetailId(String id) {
		// TODO Auto-generated method stub
		return orderDetailsDao.findOrderDetailId(id);
	}
	@Override
	public List<Category> getDsCategory(int index) {
		// TODO Auto-generated method stub
		return categoryDao.getDsCategory( index);
	}
	@Override
	public int demSLCategory() {
		// TODO Auto-generated method stub
		return categoryDao.demSLCategory();
	}
	@Override
	public List<Voucher> getDsVouchers(int index) {
		// TODO Auto-generated method stub
		return vouchersDao.getDsVouchers(index);
	}
	@Override
	public int demSLVoucher() {
		// TODO Auto-generated method stub
		return vouchersDao.demSLVoucher();
	}

}
