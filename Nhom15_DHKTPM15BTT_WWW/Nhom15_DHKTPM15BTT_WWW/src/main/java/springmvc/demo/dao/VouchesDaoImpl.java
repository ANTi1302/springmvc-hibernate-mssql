package springmvc.demo.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Voucher;

@Repository
public class VouchesDaoImpl  extends BaseDao implements VouchersDao{

	@Override
	public List<Voucher> getDsVouchers(int index) {
		Session currentSession = sessionFactory.getCurrentSession();
		TypedQuery<Voucher> theQuery = currentSession.createQuery(" from Voucher", Voucher.class).setHibernateFirstResult(((index-1)*6)).setMaxResults(6);;
		// execute query and get result list
		List<Voucher> Branchs = theQuery.getResultList();
		// return the results
		return Branchs;
	}
	
	@Override
	public int demSLVoucher() {
		try {
			String query = "SELECT count(voucher_id) FROM Voucher";
			Session currentSession = sessionFactory.getCurrentSession();

			int soHoaDon = (int) currentSession.createNativeQuery(query).getSingleResult();
			// return the results
			return soHoaDon;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
}