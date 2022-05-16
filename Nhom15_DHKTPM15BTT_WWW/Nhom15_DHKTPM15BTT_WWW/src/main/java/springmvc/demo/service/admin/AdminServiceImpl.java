package springmvc.demo.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.demo.dao.BranchsDao;
import springmvc.demo.dao.CategoryDao;
import springmvc.demo.dao.ColorsDao;
import springmvc.demo.dao.OrderDetailsDao;
import springmvc.demo.dao.OrdersDao;
import springmvc.demo.dao.ProductCartsDao;
import springmvc.demo.dao.ProductCategoryDao;
import springmvc.demo.dao.ProductDao;
import springmvc.demo.dao.UsersDao;
import springmvc.demo.dao.VouchersDao;
import springmvc.demo.entity.Branchs;
import springmvc.demo.entity.Category;
import springmvc.demo.entity.Color;
import springmvc.demo.entity.Order;
import springmvc.demo.entity.OrderDetail;
import springmvc.demo.entity.Product;
import springmvc.demo.entity.ProductCart;
import springmvc.demo.entity.ProductCategory;
import springmvc.demo.entity.Users;
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
	@Autowired
	private ProductDao productDao;
	@Autowired
	private UsersDao usersDao;
	@Autowired
	private BranchsDao branchsDao;
	@Autowired
	private ProductCategoryDao productCategoryDao;
	@Autowired
	private ColorsDao colorsDao;
	@Autowired
	private ProductCartsDao productCartsDao;
	@Override
	public List<Object[]> getDsOrderByStatus(int index,String id) {
		// TODO Auto-generated method stub
		return ordersDao.getDsOrderByStatus(index,id);
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
	@Override
	public List<Object[]> getDsProductTop9(int indexPage,String id) {
		// TODO Auto-generated method stub
		return productDao.getDsProductTop9(indexPage,id);
	}
	@Override
	public List<Category> getDsCategory() {
		// TODO Auto-generated method stub
		return categoryDao.getDsCategory();
	}
	@Override
	public List<Voucher> getDsVoucher() {
		// TODO Auto-generated method stub
		return vouchersDao.getDsVoucher();
	}
	@Override
	public Users timKiemUserByPhone(String phone) {
		// TODO Auto-generated method stub
		return usersDao.timKiemUserByPhone(phone);
	}
	@Override
	public Users timKiemUserLogin(String ten, String pass) {
		// TODO Auto-generated method stub
		return usersDao.timKiemUserLogin(ten, pass);
	}
	@Override
	public List<Branchs> getDsBranchs() {
		// TODO Auto-generated method stub
		return branchsDao.getDsBranchs();
	}
	@Override
	public void saveProduct(Product theProduct) {
		// TODO Auto-generated method stub
		productDao.saveProduct(theProduct);
		
	}
	@Override
	public void saveProductCategory(ProductCategory theProductCategory) {
		// TODO Auto-generated method stub
		productCategoryDao.saveProductCategory(theProductCategory);
		
	}
	@Override
	public void saveColor(Color theColor) {
		// TODO Auto-generated method stub
		colorsDao.saveColor(theColor);
		
	}
	@Override
	public int demSLOrderDeatilTheoProductId(String productId) {
		// TODO Auto-generated method stub
		return orderDetailsDao.demSLOrderDeatilTheoProductId(productId);
	}
	@Override
	public void deleteProduct(String id) {
		// TODO Auto-generated method stub
		productDao.deleteProduct(id);
		
	}
	@Override
	public int demSLTheoProductId(String productId) {
		// TODO Auto-generated method stub
		return productCategoryDao.demSLTheoProductId(productId);
	}
	@Override
	public void deleteProductCategory(String id) {
		// TODO Auto-generated method stub
		productCategoryDao.deleteProductCategory(id);
		
	}
	@Override
	public void deleteColor(String id) {
		// TODO Auto-generated method stub
		colorsDao.deleteColor(id);
		
	}
	@Override
	public int demSLColorTheoProductId(String productId) {
		// TODO Auto-generated method stub
		return colorsDao.demSLColorTheoProductId(productId);
	}
	@Override
	public int demSLCartTheoProductId(String productId) {
		// TODO Auto-generated method stub
		return productCartsDao.demSLCartTheoProductId(productId);
	}
	@Override
	public void updateProductByStatus(String id) {
		// TODO Auto-generated method stub
		productDao.updateProductByStatus(id);
		
	}
	@Override
	public Product getProductById(String id) {
		// TODO Auto-generated method stub
		return productDao.getProductById(id);
	}
	@Override
	public Voucher getDsVoucherById(String id) {
		// TODO Auto-generated method stub
		return vouchersDao.getDsVoucherById(id);
	}
	@Override
	public Branchs getDsBranchsById(String id) {
		// TODO Auto-generated method stub
		return branchsDao.getDsBranchsById(id);
	}
	@Override
	public List<Object[]> getDsProductTop9ToSearxh(int indexPage, String userId, String tenS) {
		// TODO Auto-generated method stub
		return productDao.getDsProductTop9ToSearxh(indexPage,userId,tenS) ;
	}
	@Override
	public void confirm(String id, String string) {

		ordersDao.confirm(id,string);
	}
	@Override
	public void cancel(String id, String string) {
		ordersDao.cancel(id, string);
		
	}
	@Override
	public List<Object[]> getDsOrderByStatusCheck(int indexPage, String userId, String tenS) {
		// TODO Auto-generated method stub
		return ordersDao.getDsOrderByStatusCheck(indexPage, userId, tenS) ;
	}
	@Override
	public List<Object[]> inventoryByCategory(int indexPage, String userId) {
		// TODO Auto-generated method stub
		return productDao.inventoryByCategory(indexPage, userId);
	}
	@Override
	public int countInventoryByCategory(String userId) {
		// TODO Auto-generated method stub
		return productDao.countInventoryByCategory( userId);
	}
	@Override
	public List<Object[]> inventoryByCategory(String userId) {
		// TODO Auto-generated method stub
		return productDao.inventoryByCategory(userId);
	}
	@Override
	public List<Object[]> revenueByCategory(String userId) {
		// TODO Auto-generated method stub
		return productDao.revenueByCategory(userId);
	}
	@Override
	public List<Object[]> revenueByCustomer(String userId) {
		// TODO Auto-generated method stub
		return productDao.revenueByCustomer(userId) ;
	}
	@Override
	public List<Object[]> revenueByYear(String userId) {
		// TODO Auto-generated method stub
		return productDao.revenueByYear(userId);
	}
	@Override
	public List<Object[]> revenueByMonth(String userId) {
		// TODO Auto-generated method stub
		return productDao.revenueByMonth( userId);
	}
	@Override
	public List<Object[]> revenueByQuater(String userId) {
		// TODO Auto-generated method stub
		return productDao.revenueByQuater(userId);
	}

}
