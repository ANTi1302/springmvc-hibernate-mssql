package springmvc.demo.service.user;

import java.util.List;

import org.springframework.stereotype.Service;

import springmvc.demo.dto.ProductDto;
import springmvc.demo.entity.Branchs;
import springmvc.demo.entity.Category;
import springmvc.demo.entity.Color;
import springmvc.demo.entity.Menus;
import springmvc.demo.entity.Product;

@Service
public interface HomeService {

	//product
	public List<Product> dsProduct() ;
//	public List<Product> dsProductTop6(int index) ;
//	public List<Color> dsProductTop6(int index) ;
//	public List<ProductDto> dsProductTop9() ;
	public List<Object[]> dsProductTop9() ;
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
	
	//color
	public List<Color> getDsColorsByIDProduct(String id) ;
//	public List<Color> getDsColorsByIDProduct(Product id) ;
	public List<Object[]> getDsColorTop9();
	public List<Object[]> getDsColorTop3();
	public List<Object[]> getDsColorTop6(int index);
	public List<Object[]> dsColorTop6(int index, String string);
	//category
	public List<Category> getDsCategory();
	//branchs
	public List<Branchs> getDsBranchs();
	
}
