package springmvc.demo.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Branchs;
import springmvc.demo.entity.Product;
import springmvc.demo.entity.ProductCategory;

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
	public List<Object[]> dsProductTheoIDCatorogyTop6(int index, String ten) {
		Session currentSession = sessionFactory.getCurrentSession();
		String hql="select p.productId.productId ,c.img, p.productId.name, p.productId.price FROM Color c INNER JOIN\r\n"
				+ "                  ProductCategory p ON c.product.productId = p.productId.productId\r\n"
				+ "				where p.categoryId.categoryId='"+ten+"' group by p.productId.productId ,c.img, p.productId.name, p.productId.price\r\n"
				+ "				order by p.productId.productId";
		// execute query and get result list
		TypedQuery<Object[]> query=currentSession.createQuery(hql,Object[].class).setHibernateFirstResult(((index-1)*6)).setMaxResults(6);
		// return the results
		List<Object[]> productCategories =  query.getResultList();
		return productCategories;
	}
	@Override
	public List<Object[]> dsProductTheoIDBranchsTop6(int index, String ten) {
		Session currentSession = sessionFactory.getCurrentSession();
		String hql="select p.productId.productId ,c.img, p.productId.name, p.productId.price FROM Color c INNER JOIN\r\n"
				+ "                  ProductCategory p ON c.product.productId = p.productId.productId\r\n"
				+ "				where c.product.branchs.branchId='"+ten+"' group by p.productId.productId ,c.img, p.productId.name, p.productId.price\r\n"
				+ "				order by p.productId.productId";
		// execute query and get result list
		TypedQuery<Object[]> query=currentSession.createQuery(hql,Object[].class).setHibernateFirstResult(((index-1)*6)).setMaxResults(6);
		// return the results
		List<Object[]> productCategories =  query.getResultList();
		return productCategories;
	}
	@Override
	public int demSLKhiSearchTheoIDCatorogy(String ten) {
		try {
			String query = "select count(*)from Product_Category\r\n"
					+ "				where  category_id='"+ten+"'";
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
	public void updateProductByID(String id) {
		Product pr= new Product();
		 Session currentSession = sessionFactory.getCurrentSession();		
		 Query<Product> query=currentSession.createQuery("update Product set [name]=:name, [price]=:price, [sale]=:sale, [title]=:title, [details]=:details, [highlight]=:highlight, [new_product]=:new_product, [size]=:size, [amount]=:amount, [quatity]=:quatity, [voucher_id]=:voucher_id, [branch_id]=:branch_id, [saller_id]=:saller_id where [product_id]=:product_id");
			query.setParameter("product_id", id);
			query.setParameter("name", pr.getName());
			query.setParameter("price", pr.getPrice());
			query.setParameter("sale", pr.getSale());
			query.setParameter("title", pr.getTitle());
			query.setParameter("details", pr.getDetails());
			query.setParameter("highlight", pr.getHighlight());
			query.setParameter("new_product", pr.getNewProduct());
			query.setParameter("size", pr.getSize());
			query.setParameter("amount", pr.getAmount());
			query.setParameter("quatity", pr.getQuatity());
			query.setParameter("voucher_id", pr.getVoucher().getVoucherId());
			query.setParameter("branch_id", pr.getBranchs().getBranchId());
			query.setParameter("saller_id", pr.getUser().getUserId());
			query.executeUpdate();
	}

	@Override
	public int demSLKhiSearchTheoIDBranch(String ten) {
		try {
			String query = "select count(*)from Product\r\n"
					+ "				where  branch_id='"+ten+"'";
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
	public List<Object[]> getDsProductTop9(int indexPage,String id) {
		Session currentSession = sessionFactory.getCurrentSession();
		TypedQuery<Object[]> theQuery = currentSession.createQuery(" from Product where saller_id='"+id+"'",Object[].class).setHibernateFirstResult(((indexPage-1)*6)).setMaxResults(6);
		// execute query and get result list
		List<Object[]> products = theQuery.getResultList();
		// return the results
		return products;
	}

//	insert [dbo].[Product] 
//			([name],[price],[sale],[title],[details],[highlight],[new_product],[size],[created_at],[update_at]
//			,[amount],[quatity],[voucher_id],[branch_id],[saller_id])
//			values ('Holzperle Christbaumkugel weiß',60,0,'Holzperle Christbaumkugel weiß ','Holzperle Christbaumkugel weiß oder natürliche Dekoration Wohnkultur Bauernhaus Baumschmuck B',0,1,'None','5/12/2022','5/12/2022'
//			,'50','50','ba41cb0c-3c49-43cc-b048-2a4e01a71ab4','6c684c2f-c1df-4ad8-b066-3a0e4decdb40','bf832d0d-a988-4095-a2cf-e96ca327c101')
	@Override
	public void saveProduct(Product theProduct) {
		 Session currentSession = sessionFactory.getCurrentSession();
         // save/upate the customer ... finally
         currentSession.saveOrUpdate(theProduct);
	}

	@Override
	public void updateProductByStatus(String id) {
		Product pr= new Product();
		 Session currentSession = sessionFactory.getCurrentSession();		
		 Query<Product> query=currentSession.createQuery("update Product set quatity=0 where product_id=:product_id");
			query.setParameter("product_id", id);
			query.executeUpdate();
	}

	@Override
	public void deleteProduct(String id) {
		Session currentSession=sessionFactory.getCurrentSession();
		Query<Product> query=currentSession.createQuery("delete from Product where product_id=:product_id");
		query.setParameter("product_id", id);
		query.executeUpdate();		
	}
	@Override
	public Product getProductById(String id) {
		 Session currentSession = sessionFactory.getCurrentSession();
         // now retrieve/read from database using the primary key
         Product theProduct = currentSession.get(Product.class, id);
         return theProduct;
	}
	
}
