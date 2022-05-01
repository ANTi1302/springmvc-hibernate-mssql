package springmvc.demo.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import springmvc.demo.entity.Category;
import springmvc.demo.entity.Order;
import springmvc.demo.entity.OrderDetail;
import springmvc.demo.entity.Voucher;

@Service
public interface AdminService {

	public List<Object[]> getDsOrderByStatus(int index) ;

	public int demSLOrderByStatus();
	public List<Object[]> findOrderDetailId(String id);
	
	///category
	public List<Category> getDsCategory(int index);

	public int demSLCategory();
	
	///voucher
	
	public List<Voucher> getDsVouchers(int index);
	public int demSLVoucher() ;
}
