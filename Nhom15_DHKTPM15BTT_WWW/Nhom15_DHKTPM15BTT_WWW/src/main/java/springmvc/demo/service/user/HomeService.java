package springmvc.demo.service.user;

import java.util.List;

import org.springframework.stereotype.Service;

import springmvc.demo.dto.ProductDto;
import springmvc.demo.entity.Branchs;
import springmvc.demo.entity.Cart;
import springmvc.demo.entity.Category;
import springmvc.demo.entity.Color;
import springmvc.demo.entity.Menus;
import springmvc.demo.entity.Order;
import springmvc.demo.entity.OrderDetail;
import springmvc.demo.entity.Product;
import springmvc.demo.entity.Users;

@Service
public interface HomeService {

	// product
	public List<Product> dsProduct();

	public int demSLProduct();

	public int demSLKhiSearch(String ten);

	public List<Product> timKiemTheoTen(String ten);

	public Product getProduct(String txt);

//	public List<Object[]> getProduct(String txt);
	public List<Product> dsProductTheoIDCatorogyTop6(int index, int ten);

	public int demSLKhiSearchTheoIDCatorogy(int ten);

	public boolean capNhatProduct(int product);

	// menus
	public List<Menus> getDsMenus();

	// color
	public List<Color> getDsColorsByIDProduct(String id);

//	public List<Color> getDsColorsByIDProduct(Product id) ;
	public List<Object[]> getDsColorTop9();

	public List<Object[]> getDsColorTop3();

	public List<Object[]> getDsColorTop6(int index);

	public List<Object[]> dsColorTop6(int index, String string);

	public List<Object[]> dsColor();

	public List<Object[]> thongTinChiTiet(String id);

	// category
	public List<Category> getDsCategory();

	// branchs
	public List<Branchs> getDsBranchs();

	// productcart
	public void addProductCarts(List<Object> cart);

	// cart
	public void addCart(Cart cart);

	public Cart findCartId(String id);

	// order
	public void addOrders(Order order);

	public Order findOrderId(String id);

	// orderdetails
	public void addOrderDetails(OrderDetail order);

	public OrderDetail findOrderDetailId(String id);
	
	//user
	public Users timKiemUserLogin(String ten, String pass);

}
