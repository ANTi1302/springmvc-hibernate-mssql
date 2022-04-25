package springmvc.demo.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Color;
@Repository
public class ColorDaoImpl extends BaseDao implements ColorsDao {

	private final boolean YES=true;
	private final boolean NO=false;
	private StringBuffer sql() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT c.img, c.product.productId,c.product.name, c.product.price,c.product.title ");
		sql.append("			FROM     Color c ");
		return sql;
	}
	
	private String sqlProductNew(boolean productNew, boolean highLight) {
		StringBuffer sql = sql();
		sql.append("where 1= 1 ");
		if(productNew) {
			sql.append("and c.product.newProduct= 1 ");
		}
		if (highLight) {
			sql.append("and c.product.highlight= 1 ");
		}
		sql.append("			GROUP BY c.img, c.product.productId,c.product.name, c.product.price,c.product.title order by newid()");
		return sql.toString();
	}
//	@Override
//	public List<Color> getDsColorsByIDProduct(String id) {
//		Session currentSession = sessionFactory.getCurrentSession();
//		Query<Color> theQuery = currentSession.createQuery(" from Color c where c.product.productId=:id", Color.class);
//		theQuery.setParameter("id", id);
//		// execute query and get result list
//		List<Color> color = (List<Color>) theQuery.getResultList();
//		// return the results
//		return color;
//	}
//	SELECT img, product_id
//	FROM     Color
//	where product_id='B318365A-47FE-4CB5-8A41-C7F776F7DF1C'
//	GROUP BY  img, product_id 
	@Override
	public List<Color> getDsColorsByIDProduct(String id) {
		Session currentSession = sessionFactory.getCurrentSession();
		TypedQuery<Color> theQuery = currentSession.createQuery(" SELECT c.img, c.product.productId\r\n"
				+ "FROM     Color c\r\n"
				+ "where c.product.productId='"+id+"'\r\n"
				+ "GROUP BY  c.img, c.product.productId ");
		// execute query and get result list
		List<Color> color = (List<Color>) theQuery.getResultList();
		// return the results
		return color;
	}

	@Override
	public List<Object[]> getDsColorTop9() {
//		String hql="SELECT c.img, c.product.productId,c.product.name, c.product.price\r\n"
//				+ "FROM     Color c\r\n"
//				+ "GROUP BY c.img, c.product.productId,c.product.name, c.product.price order by newid()";
		Session currentSession = sessionFactory.getCurrentSession();
//		Query<Color> theQuery = currentSession.createQuery(" SELECT img, product_id\r\n"
//				+ "FROM     Color c\r\n"
//				+ "GROUP BY img, c.product.productId", Color.class);
		// execute query and get result list
		String sql=sqlProductNew(NO, YES);
		TypedQuery<Object[]> query=currentSession.createQuery(sql,Object[].class).setMaxResults(9);
		List<Object[]> color = (List<Object[]>) query.getResultList();
		// return the results
		return color;
	}

	@Override
	public List<Object[]> getDsColorTop3() {
		Session currentSession = sessionFactory.getCurrentSession();
		String sql=sqlProductNew(YES, NO);
		TypedQuery<Object[]> query=currentSession.createQuery(sql,Object[].class).setMaxResults(3);
		List<Object[]> color = (List<Object[]>) query.getResultList();
		// return the results
		return color;
	}
//	SELECT *
//	FROM (
//	    SELECT *, ROW_NUMBER() OVER (ORDER BY [product_id]) AS RowNum
//	    FROM [dbo].Color
//	) AS MyDerivedTable
//	WHERE MyDerivedTable.RowNum BETWEEN 0 AND 3
	@Override
	public List<Object[]> dsProductTop6(int index) {
		String hql= "select c.product.productId ,c.img, c.product.name, c.product.price  from Color c group by c.product.productId,c.img, c.product.name, c.product.price\r\n"
				+ "				order by c.product.productId\r\n";
//				+ "				offset "+((index-1)*3)+" row fetch next 6 row only";
		Session currentSession = sessionFactory.getCurrentSession();
		TypedQuery<Object[]> query=currentSession.createQuery(hql,Object[].class).setHibernateFirstResult(((index-1)*6)).setMaxResults(6);
//		query.setParameter("index", (6*index)-5);
		List<Object[]> color = (List<Object[]>) query.getResultList();
		return color;
	}

	@Override
	public List<Object[]> dsColorTop6(int index, String string) {
		String hql= "select c.product.productId ,c.img, c.product.name, c.product.price  from Color c where c.product.name like '%"+string+"%' group by c.product.productId,c.img, c.product.name, c.product.price\r\n"
				+ "		order by c.product.productId\r\n";
		Session currentSession = sessionFactory.getCurrentSession();
		TypedQuery<Object[]> query=currentSession.createQuery(hql,Object[].class).setHibernateFirstResult(((index-1)*6)).setMaxResults(6);
		List<Object[]> color = (List<Object[]>) query.getResultList();
		return color;
	}
//	SELECT Color.name, Color.code
//	FROM     Color 
//	GROUP BY Color.name, Color.code
	@Override
	public List<Object[]> dsColor() {
		Session currentSession = sessionFactory.getCurrentSession();
		String hql ="SELECT c.name, c.code\r\n"
				+ "FROM     Color c\r\n"
				+ "GROUP BY c.name, c.code ";
		
		// execute query and get result list
		TypedQuery<Object[]> query=currentSession.createQuery(hql,Object[].class);
		List<Object[]> color = (List<Object[]>) query.getResultList();
		// return the results
		return color;
	}

	@Override
	public List<Object[]> thongTinChiTiet(String id) {
		String hql= "SELECT p.productId,c.img, c.product.name, c.product.price, c.product.sale, c.product.title, c.product.details, c.product.size, c.product.createdAt, c.product.amount, c.product.voucher.voucherId, c.product.quatity, c.product.branchs.title, c.product.branchs.branchId\r\n"
				+ "FROM     Product p INNER JOIN\r\n"
				+ "                  Color c ON p.productId = c.product.productId INNER JOIN ProductCategory pc ON p.productId= pc.productId.productId\r\n"
				+ "				  where p.productId='"+id+"'\r\n"
				+ "GROUP BY p.productId, c.img, c.product.name, c.product.price, c.product.sale, c.product.title,\r\n"
				+ "c.product.details, c.product.size, c.product.createdAt, c.product.amount, c.product.voucher.voucherId, c.product.quatity, c.product.branchs.title, c.product.branchs.branchId";
		Session currentSession = sessionFactory.getCurrentSession();
		TypedQuery<Object[]> query=currentSession.createQuery(hql,Object[].class);
		List<Object[]> product = (List<Object[]>) query.getResultList();
		return product;
	}
	
}
