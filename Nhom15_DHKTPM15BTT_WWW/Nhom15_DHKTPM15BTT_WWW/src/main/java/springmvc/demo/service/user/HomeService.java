package springmvc.demo.service.user;

import java.util.List;

import org.springframework.stereotype.Service;

import springmvc.demo.entity.Menus;
import springmvc.demo.entity.Product;

@Service
public interface HomeService {

	//product
	public List<Product> dsProduct() ;
	public List<Product> dsProductTop6(int index) ;
	public List<Product> dsProductTop6(int index, String ten) ;
	public List<Product> dsProductTop9() ;
	public int demSLProduct() ;
	public int demSLKhiSearch(String ten) ;
	public Product thongTinChiTiet(int id) ;
	public List<Product> timKiemTheoTen(String ten) ;
	public Product getProduct(String txt);
	public List<Product> dsProductTheoIDCatorogyTop6(int index, int ten) ;
	public int demSLKhiSearchTheoIDCatorogy(int ten) ;
	public boolean capNhatProduct(int product);
	
	//menus
	public List<Menus> getDsMenus();
}
