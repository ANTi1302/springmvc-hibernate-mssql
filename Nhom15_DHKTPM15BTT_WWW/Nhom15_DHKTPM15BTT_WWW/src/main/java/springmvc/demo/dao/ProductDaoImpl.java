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
	private StringBuffer sql() {
		StringBuffer  sql = new StringBuffer();
		sql.append("select p.product_id, p.name, p.price, p.sale, p.title, p.details, p.highlight, p.new_product, p.size, p.created_at, p.update_at, p.amount, p.voucher_id, ");
		sql.append("c.color_id, c.name as name_color, c.code, c.img ");
		sql.append("from  Color c inner join ");
		sql.append("Product p on c.product.productId = p.product_id ");
		return sql;
	}
	
	private String sqlProductNew(boolean productNew, boolean highLight) {
		StringBuffer sql = sql();
		sql.append("where 1= 1 ");
		if(productNew) {
			sql.append("and p.new_product= 1 ");
		}
		if (highLight) {
			sql.append("and p.highlight= 1 ");
		}
		sql.append("group by p.product_id, p.name, p.price, p.sale, p.title, p.details, p.highlight, p.new_product, p.size, p.created_at, p.update_at, p.amount, p.voucher_id, ");
		sql.append("c.color_id, c.name, c.code, c.img, c.product_id order by p.created_at");
		return sql.toString();
	}
//	public List<Products> getDsProducts() {
//		List<Products> products=new ArrayList<Products>();
//		String sql=sqlProductNew(YES, NO);
//		products=jdbcTemplate.query(sql, new MappingProducts());
//		return products;
//		
//	}
	@Override
	public List<Object[]> dsProductTop9() {
		Session currentSession = sessionFactory.getCurrentSession();
		List<Object[]> products=new ArrayList<Object[]>();
		String sql=sqlProductNew(YES, NO);
	
		products=(List<Object[]>) currentSession.createQuery(sql);
		return products;
	}
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
	
//	@Override
//	public List<Product> dsProductTop9() {
//		Session currentSession = sessionFactory.getCurrentSession();
//		Query<Product> theQuery = currentSession.createQuery(" from Product ",
//				Product.class).setMaxResults(9);
//		// execute query and get result list
//		List<Product> products = theQuery.getResultList();
//		// return the results
//		return products;
//	}
	@Override
	public List<Product> dsProduct() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Product> theQuery = currentSession.createQuery(" from Product ",
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
