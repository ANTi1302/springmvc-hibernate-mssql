package springmvc.demo.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Branchs;
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

	@Override
	public List<Voucher> getDsVoucher() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Voucher> theQuery = currentSession.createQuery(" from Voucher", Voucher.class);
		// execute query and get result list
		List<Voucher> vouchers = theQuery.getResultList();
		// return the results
		return vouchers;
	}

	@Override
	public Voucher getDsVoucherById(String id) {
		 Session currentSession = sessionFactory.getCurrentSession();
		 Voucher theVoucher = currentSession.get(Voucher.class, id);
         return theVoucher;
	}
}
