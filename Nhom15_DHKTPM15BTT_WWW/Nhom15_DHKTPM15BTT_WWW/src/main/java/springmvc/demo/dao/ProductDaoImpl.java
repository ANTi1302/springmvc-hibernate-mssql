package springmvc.demo.dao;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.dto.MappingProducts;
import springmvc.demo.dto.ProductDto;
import springmvc.demo.entity.Color;
import springmvc.demo.entity.Menus;
import springmvc.demo.entity.Product;

@Repository
public class ProductDaoImpl extends BaseDao implements ProductDao {

	private final boolean YES=true;
	private final boolean NO=false;
//	private StringBuffer sql() {
//		StringBuffer  sql = new StringBuffer();
//		sql.append("select Product.product_id, Product.name, Product.price, Product.sale, Product.title, Product.details, Product.highlight, Product.new_product, Product.size, Product.created_at, Product.update_at, Product.amount, Product.voucher_id, ");
//		sql.append("Color.color_id, Color.name as name_color, Color.code, Color.img ");
//		sql.append("from  Color inner join ");
//		sql.append("Product on Color.product_id = Product.product_id ");
//		return sql;
//	}
//	
//	private String sqlProductNew(boolean productNew, boolean highLight) {
//		StringBuffer sql = sql();
//		sql.append("where 1= 1 ");
//		if(productNew) {
//			sql.append("and Product.new_product= 1 ");
//		}
//		if (highLight) {
//			sql.append("and Product.highlight= 1 ");
//		}
//		sql.append("group by Product.product_id, Product.name, Product.price, Product.sale, Product.title, Product.details, Product.highlight, Product.new_product, Product.size, Product.created_at, Product.update_at, Product.amount, Product.voucher_id, ");
//		sql.append("Color.color_id, Color.name, Color.code, Color.img, Color.product_id order by Product.created_at");
//		return sql.toString();
//	}
//	public List<Products> getDsProducts() {
//		List<Products> products=new ArrayList<Products>();
//		String sql=sqlProductNew(YES, NO);
//		products=jdbcTemplate.query(sql, new MappingProducts());
//		return products;
//		
//	}
//	@Override
//	public List<ProductDto> dsProductTop9() {
//		Session currentSession = sessionFactory.getCurrentSession();
//		List<ProductDto> products=new ArrayList<ProductDto>();
//		String sql=sqlProductNew(YES, NO);
//	
//		products=(List<ProductDto>) currentSession.createQuery(sql, MappingProducts.class);
//		return products;
//	}
//	EntityTransaction tr = em.getTransaction();
//	try {
//		tr.begin();
//		List<Product> list = em.createNativeQuery("select top 9 *from  [dbo].[Product] order by  [ProductID] ", Product.class).getResultList();
//		tr.commit();
//		return list;
//	} catch (Exception e) {
//		e.printStackTrace();
//		tr.rollback();
//	}
//	return null;
	
	@Override
	public List<ProductDto> dsProductTop9() {
		Session currentSession = sessionFactory.getCurrentSession();
		 @SuppressWarnings("unchecked")
		Query<ProductDto> query
	      =  currentSession.createNativeQuery(
	          "select Product.product_id, Product.name, Product.price, Product.sale, Product.title, Product.details, Product.highlight, Product.new_product, Product.size, Product.created_at, Product.update_at, Product.amount, Product.voucher_id, \r\n"
	          + "Color.color_id, Color.name as name_color, Color.code, Color.img \r\n"
	          + "	from  Color inner join \r\n"
	          + "Product on Color.product_id = Product.product_id\r\n"
	          + "where 1= 1 \r\n"
	          + "		\r\n"
	          + "		and Product.new_product= 1\r\n"
	          + "	group by Product.product_id, Product.name, Product.price, Product.sale, Product.title, Product.details, Product.highlight, Product.new_product, Product.size, Product.created_at, Product.update_at, Product.amount, Product.voucher_id,\r\n"
	          + "	Color.color_id, Color.name, Color.code, Color.img order by Product.created_at",ProductDto.class).setMaxResults(9);
	    List<ProductDto> resultList = query.getResultList();
	    return resultList;
	}
	@Override
	public List<Product> dsProduct() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Product> theQuery = currentSession.createQuery(" from Product order by  product_id",
				Product.class);
		// execute query and get result list
		List<Product> products = theQuery.getResultList();
		// return the results
		return products;
	}

	@Override
	public List<Product> dsProductTop6(int index) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> dsProductTop6(int index, String ten) {
		// TODO Auto-generated method stub
		return null;
	}

	

//	SELECT count(productID) FROM [dbo].[Product]
	@Override
	public int demSLProduct() {
		try {
			String query = "SELECT count(product_id) FROM Product";
			Session currentSession = sessionFactory.getCurrentSession();

			int soHoaDon = (int) currentSession.createNativeQuery(query).getSingleResult();
			// return the results
			return soHoaDon;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int demSLKhiSearch(String ten) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Product thongTinChiTiet(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Product theProduct = currentSession.get(Product.class, id);
		return theProduct;
	}

//	select *from [dbo].[Product]
//			where [name] like N'%a%'
	@Override
	public List<Product> timKiemTheoTen(String ten) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Product> theQuery = currentSession
				.createQuery("from Product\r\n" + "			where name like N'%:ten%'", Product.class);
		// execute query and get result list
		theQuery.setParameter("ten", ten);
		List<Product> products = theQuery.getResultList();
		// return the results
		return products;
	}

//	select * from Product where product_id ='0647194E-C5AD-40D8-B73D-1822E3751B47'
	@Override
	public Product getProduct(String txt) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Product> theQuery = currentSession.createQuery(" from Product where product_id =':txt'", Product.class);
		// execute query and get result list
		theQuery.setParameter("txt", txt);
		Product product = theQuery.getSingleResult();
		// return the results
		return product;
	}

	@Override
	public List<Product> dsProductTheoIDCatorogyTop6(int index, int ten) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int demSLKhiSearchTheoIDCatorogy(int ten) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean capNhatProduct(int product) {
		// TODO Auto-generated method stub
		return false;
	}

}
