package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.dto.ProductDto;
import springmvc.demo.entity.Product;

public interface ProductDao {

	public List<Product> dsProduct() ;
	public List<Product> dsProductTop6(int index) ;
	public List<Product> dsProductTop6(int index, String ten) ;
	
//	public List<ProductDto> dsProductTop9() ;
	public List<Object[]> dsProductTop9() ;
	public int demSLProduct() ;
	public int demSLKhiSearch(String ten) ;
	public Product thongTinChiTiet(int id) ;
	public List<Product> timKiemTheoTen(String ten) ;
	public Product getProduct(String product_id);
	public List<Product> dsProductTheoIDCatorogyTop6(int index, int ten) ;
	public int demSLKhiSearchTheoIDCatorogy(int ten) ;
	public boolean capNhatProduct(int product);
}
