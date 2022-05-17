package springmvc.demo.service.admin;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

import org.springframework.stereotype.Service;

import springmvc.demo.entity.Branchs;
import springmvc.demo.entity.Category;
import springmvc.demo.entity.Color;
import springmvc.demo.entity.Product;
import springmvc.demo.entity.ProductCategory;
import springmvc.demo.entity.Users;
import springmvc.demo.entity.Voucher;

@Service
public interface AdminService {

	// order
	public List<Object[]> getDsOrderByStatus(int index, String string);

	public int demSLOrderByStatus();

	public List<Object[]> findOrderDetailId(String id);

	public int demSLOrderDeatilTheoProductId(String productId);

	public void confirm(String id, String string);

	public void cancel(String id, String string);

	public List<Object[]> getDsOrderByStatusCheck(int indexPage, String userId, String tenS);

	/// category
	public List<Category> getDsCategory(int index);

	public List<Category> getDsCategory();

	public int demSLCategory();

	/// voucher

	public List<Voucher> getDsVouchers(int index);

	public int demSLVoucher();

	public List<Voucher> getDsVoucher();

	public Voucher getDsVoucherById(String id);

	// product
	public List<Object[]> getDsProductTop9(int indexPage, String id);

	public void saveProduct(Product theProduct);

	public void deleteProduct(String id);

	public void updateProductByStatus(String id);

	public Product getProductById(String id);

	public List<Object[]> getDsProductTop9ToSearxh(int indexPage, String userId, String tenS);

	// user
	public Users timKiemUserByPhone(String phone);

	public Users timKiemUserLogin(String ten, String pass);

	// branch
	public List<Branchs> getDsBranchs();

	public Branchs getDsBranchsById(String id);

	// productcategory
	public void saveProductCategory(ProductCategory theProductCategory);

	public int demSLTheoProductId(String productId);

	public void deleteProductCategory(String id);

	// color
	public void saveColor(Color theColor);

	public void deleteColor(String id);

	public int demSLColorTheoProductId(String productId);

	// productcart
	public int demSLCartTheoProductId(String productId);

	/// inventory
	public List<Object[]> inventoryByCategory(int indexPage, String userId);

	public int countInventoryByCategory(String userId);

	// ton kho theo loai san pham
	public List<Object[]> inventoryByCategory(String userId);

	// doanh so ban hang
	public List<Object[]> revenueByCategory(String userId);
	public List<Object[]> revenueByCategory(int indexPage,String userId);

	// thong ke theo khach hang
	public List<Object[]> revenueByCustomer(String userId);

	// thong ke theo doanh thu theo nam
	public List<Object[]> revenueByYear(String userId);

	// thong ke theo doanh thu theo thang
	public List<Object[]> revenueByMonth(String userId);

	// thong ke theo doanh thu theo quy
	public List<Object[]> revenueByQuater(String userId);

	public int countRevenueByCategory(String userId);
	
	public int countQuantityProduct(String userId);
	
	public int countOrder(String userId);
	
	public BigDecimal salesOrderDetail(String userId);

}
