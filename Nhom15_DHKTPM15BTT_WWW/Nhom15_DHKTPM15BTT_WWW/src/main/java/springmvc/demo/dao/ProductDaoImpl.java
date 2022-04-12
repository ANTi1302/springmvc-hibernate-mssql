package springmvc.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Product;

@Repository
public class ProductDaoImpl extends BaseDao implements ProductDao {

	@Override
	public List<Product> dsProduct() {
		 Session currentSession = sessionFactory.getCurrentSession();
		Query<Product> theQuery = currentSession.createQuery("from  [dbo].[Product] order by  [product_id]", Product.class);
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
//	select top 9 *from  [dbo].[Product] order by [created_at]
	@Override
	public List<Product> dsProductTop9() {
		 Session currentSession = sessionFactory.getCurrentSession();
		Query<Product> theQuery = currentSession.createQuery("select top 9 *from  [dbo].[Product] order by [created_at]", Product.class);
		// execute query and get result list
		List<Product> products = theQuery.getResultList();
		// return the results
		return products;
	}
//	SELECT count(productID) FROM [dbo].[Product]
	@Override
	public int demSLProduct() {
		try {
		String query = "SELECT count(product_id) FROM [dbo].[Product]";
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
		Query<Product> theQuery = currentSession.createQuery("from [dbo].[Product]\r\n"
				+ "			where [name] like N'%:ten%'", Product.class);
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
		Query<Product> theQuery = currentSession.createQuery("select * from Product where product_id =':txt'", Product.class);
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
