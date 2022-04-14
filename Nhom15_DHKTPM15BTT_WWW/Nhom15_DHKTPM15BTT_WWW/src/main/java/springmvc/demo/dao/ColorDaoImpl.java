package springmvc.demo.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Color;
import springmvc.demo.entity.Product;
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
	
	@Override
	public List<Color> getDsColorsByIDProduct(String id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Color> theQuery = currentSession.createQuery(" from Color c where c.product.productId=:id", Color.class);
		theQuery.setParameter("id", id);
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
//		String hql="SELECT c.img, c.product.productId,c.product.name, c.product.price, c.product.title\r\n"
//				+ "FROM     Color c\r\n"
//				+ "GROUP BY c.img, c.product.productId,c.product.name, c.product.price, c.product.title order by newid()";
		Session currentSession = sessionFactory.getCurrentSession();
//		Query<Color> theQuery = currentSession.createQuery(" SELECT img, product_id\r\n"
//				+ "FROM     Color c\r\n"
//				+ "GROUP BY img, c.product.productId", Color.class);
		// execute query and get result list
		String sql=sqlProductNew(YES, NO);
		TypedQuery<Object[]> query=currentSession.createQuery(sql,Object[].class).setMaxResults(3);
		List<Object[]> color = (List<Object[]>) query.getResultList();
		// return the results
		return color;
	}


}
