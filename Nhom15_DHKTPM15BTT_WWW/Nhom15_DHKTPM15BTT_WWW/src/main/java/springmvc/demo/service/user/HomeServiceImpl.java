package springmvc.demo.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.demo.dao.BranchsDao;
import springmvc.demo.dao.CartsDao;
import springmvc.demo.dao.CategoryDao;
import springmvc.demo.dao.ColorsDao;
import springmvc.demo.dao.MenusDao;
import springmvc.demo.dao.OrderDetailsDao;
import springmvc.demo.dao.OrdersDao;
import springmvc.demo.dao.ProductCartsDao;
import springmvc.demo.dao.ProductDao;
import springmvc.demo.dao.UsersDao;
import springmvc.demo.dto.ProductDto;
import springmvc.demo.entity.Branchs;
import springmvc.demo.entity.Cart;
import springmvc.demo.entity.Category;
import springmvc.demo.entity.Color;
import springmvc.demo.entity.Menus;
import springmvc.demo.entity.Order;
import springmvc.demo.entity.OrderDetail;
import springmvc.demo.entity.Product;
import springmvc.demo.entity.ProductCategory;
import springmvc.demo.entity.Users;


@Service
@Transactional
public class HomeServiceImpl implements HomeService{

	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private MenusDao menusDao;
	
	@Autowired
	private ColorsDao colorsDao;
	
	@Autowired
	private CategoryDao categoryDao;
	
	@Autowired
	private BranchsDao branchsDao;
	
	@Autowired
	private ProductCartsDao productCartsDao;
	
	@Autowired
	private CartsDao cartsDao;
	
	@Autowired
	private OrdersDao orderDao;
	
	@Autowired
	private OrderDetailsDao orderDetailsDao;
	
	@Autowired
	private UsersDao usersDao;
	@Override
	
	public List<Product> dsProduct() {
		// TODO Auto-generated method stub
		return productDao.dsProduct();
	}

	@Override
	
	public int demSLProduct() {
		// TODO Auto-generated method stub
		return productDao.demSLProduct();
	}

	@Override
	
	public int demSLKhiSearch(String ten) {
		// TODO Auto-generated method stub
		return productDao.demSLKhiSearch(ten);
	}

	@Override
	
	public List<Object[]> thongTinChiTiet(String id) {
		// TODO Auto-generated method stub
		return colorsDao.thongTinChiTiet(id);
	}

	@Override
	
	public List<Product> timKiemTheoTen(String ten) {
		// TODO Auto-generated method stub
		return productDao.timKiemTheoTen(ten);
	}

	@Override
	
	public Product getProduct(String txt) {
		// TODO Auto-generated method stub
		return productDao.getProduct(txt);
	}
//	public List<Object[]> getProduct(String txt) {
//		// TODO Auto-generated method stub
//		return productDao.getProduct(txt);
//	}
	@Override
	
	public List<Object[]> dsProductTheoIDCatorogyTop6(int index, String ten) {
		// TODO Auto-generated method stub
		return productDao.dsProductTheoIDCatorogyTop6(index, ten);
	}

	@Override
	
	public int demSLKhiSearchTheoIDCatorogy(String ten) {
		// TODO Auto-generated method stub
		return productDao.demSLKhiSearchTheoIDCatorogy(ten);
	}

	@Override
	
	public boolean capNhatProduct(int product) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	
	public List<Menus> getDsMenus() {
		// TODO Auto-generated method stub
		return menusDao.getDsMenus();
	}

	@Override
	
	public List<Color> getDsColorsByIDProduct(String id) {
		// TODO Auto-generated method stub
		return colorsDao.getDsColorsByIDProduct(id);
	}

	@Override
	
	public List<Object[]> getDsColorTop9() {
		// TODO Auto-generated method stub
		return colorsDao.getDsColorTop9();
	}

	@Override
	
	public List<Object[]> getDsColorTop3() {
		// TODO Auto-generated method stub
		return colorsDao.getDsColorTop3();
	}

	@Override
	
	public List<Object[]> getDsColorTop6(int index) {
		// TODO Auto-generated method stub
		return colorsDao.dsProductTop6(index);
	}

	@Override
	
	public List<Category> getDsCategory() {
		// TODO Auto-generated method stub
		return categoryDao.getDsCategory();
	}

	@Override
	
	public List<Branchs> getDsBranchs() {
		// TODO Auto-generated method stub
		return branchsDao.getDsBranchs();
	}

	@Override
	public List<Object[]> dsColorTop6(int index, String string) {
		// TODO Auto-generated method stub
		return colorsDao. dsColorTop6(index,string);
	}

	@Override
	public List<Object[]> dsColor() {
		// TODO Auto-generated method stub
		return colorsDao.dsColor();
	}

	@Override
	public void addProductCarts(List<Object> cart) {
		productCartsDao.addProductCarts(cart);
		
	}

	@Override
	public void addCart(Cart cart) {
		cartsDao.addCart(cart);
		
	}

	@Override
	public Cart findCartId(String id) {
		// TODO Auto-generated method stub
		return cartsDao.findCartId(id);
	}

	@Override
	public void addOrders(Order order) {
		orderDao.addOrders(order);
		
	}

	@Override
	public Order findOrderId(String id) {
		return orderDao.findOrderId(id);
	}

	@Override
	public void addOrderDetails(OrderDetail order) {
		orderDetailsDao.addOrderDetails(order);
		
	}

	@Override
	public OrderDetail findOrderDetailId(String id) {
		// TODO Auto-generated method stub
		return orderDetailsDao.findOrderDetailId(id);
	}

	@Override
	public Users timKiemUserLogin(String ten, String pass) {
		return usersDao.timKiemUserLogin(ten, pass);
	}

	@Override
	public Users timKiemUser(String ten, String pass) {
		// TODO Auto-generated method stub
		return usersDao.timKiemUser(ten, pass);
	}

	@Override
	public void themUser(Users users2) {
		usersDao.themUser(users2);
		
	}

	@Override
	public List<Object[]> dsProductTheoIDBranchsTop6(int index, String ten) {
		// TODO Auto-generated method stub
		return productDao.dsProductTheoIDBranchsTop6(index, ten);
	}

	@Override
	public int demSLKhiSearchTheoIDBranch(String ten) {
		// TODO Auto-generated method stub
		return productDao.demSLKhiSearchTheoIDBranch(ten);
	}


}
