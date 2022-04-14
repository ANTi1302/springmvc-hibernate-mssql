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
	public List<Object[]> getDsColor() {
		String hql="SELECT c.img, c.product.productId,c.product.name, c.product.price\r\n"
				+ "FROM     Color c\r\n"
				+ "GROUP BY c.img, c.product.productId,c.product.name, c.product.price";
		Session currentSession = sessionFactory.getCurrentSession();
//		Query<Color> theQuery = currentSession.createQuery(" SELECT img, product_id\r\n"
//				+ "FROM     Color c\r\n"
//				+ "GROUP BY img, c.product.productId", Color.class);
		// execute query and get result list
		TypedQuery<Object[]> query=currentSession.createQuery(hql,Object[].class).setMaxResults(9);
		List<Object[]> color = (List<Object[]>) query.getResultList();
		// return the results
		return color;
	}


}
