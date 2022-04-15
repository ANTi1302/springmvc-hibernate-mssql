package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.dto.ProductDto;
import springmvc.demo.entity.Product;

public interface ProductDao {

	public List<Product> dsProduct() ;
	public int demSLProduct() ;
	public int demSLKhiSearch(String ten) ;
	public List<Product> timKiemTheoTen(String ten) ;
	public Product getProduct(String product_id);
	public List<Product> dsProductTheoIDCatorogyTop6(int index, int ten) ;
	public int demSLKhiSearchTheoIDCatorogy(int ten) ;
	public boolean capNhatProduct(int product);
}
