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

import springmvc.demo.dto.ProductDto;
import springmvc.demo.entity.Color;
import springmvc.demo.entity.Menus;
import springmvc.demo.entity.Product;

@Repository
public class ProductDaoImpl extends BaseDao implements ProductDao {

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
		try {
			String query = "SELECT count(product_id) FROM Product where name like '%"+ten+"%'";
			Session currentSession = sessionFactory.getCurrentSession();

			int soHoaDon = (int) currentSession.createNativeQuery(query).getSingleResult();
			// return the results
			return soHoaDon;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}


//	select *from [dbo].[Product]
//			where [name] like N'%a%'
	@Override
	public List<Product> timKiemTheoTen(String ten) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Product> theQuery = currentSession
				.createQuery("from Product\r\n" + "where name like N'%:ten%'", Product.class);
		// execute query and get result list
		theQuery.setParameter("ten", ten);
		List<Product> products = theQuery.getResultList();
		// return the results
		return products;
	}

//	select * from Product where product_id ='0647194E-C5AD-40D8-B73D-1822E3751B47'
	@Override
	public Product getProduct(String product_id) {
//		// get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();
//        // now retrieve/read from database using the primary key
        Product theProduct = currentSession.get(Product.class, product_id);
        return theProduct;
	}
//	@Override
//	public List<Object[]> getProduct(String product_id) {
//		String hql= "select c.product.productId ,c.img, c.product.name, c.product.price  from Color c where c.product.productId like '%"+product_id+"%' group by c.product.productId,c.img, c.product.name, c.product.price\r\n"
//				+ "		order by c.product.productId\r\n";
//		Session currentSession = sessionFactory.getCurrentSession();
//		TypedQuery<Object[]> query=currentSession.createQuery(hql,Object[].class);
//		List<Object[]> product = (List<Object[]>) query.getResultList();
//		return product;
//	}
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
