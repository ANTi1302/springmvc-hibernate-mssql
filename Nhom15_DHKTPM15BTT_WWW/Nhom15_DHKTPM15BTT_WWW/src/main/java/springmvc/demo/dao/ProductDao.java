package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.entity.Product;
import springmvc.demo.entity.ProductCategory;

public interface ProductDao {

	public List<Product> dsProduct() ;
	public int demSLProduct() ;
	public int demSLKhiSearch(String ten) ;
	public List<Product> timKiemTheoTen(String ten);
	public Product getProduct(String product_id);
//	public List<Object[]> getProduct(String product_id);
	public List<Object[]> dsProductTheoIDCatorogyTop6(int index, String ten) ;
	public int demSLKhiSearchTheoIDCatorogy(String ten) ;
	public void updateProductByID(String id) ;
	public List<Object[]> dsProductTheoIDBranchsTop6(int index, String ten);
	public int demSLKhiSearchTheoIDBranch(String ten);
	public List<Object[]> getDsProductTop9(int indexPage,String id);
	public void saveProduct(Product theProduct);
	public void updateProductByStatus(String id) ;
	public void deleteProduct(String id);
	public Product getProductById(String id);
	public List<Object[]> getDsProductTop9ToSearxh(int indexPage, String userId, String tenS);
	public int demSLKhiSearchTheoIDSaller(String tenS, String userId);
}
