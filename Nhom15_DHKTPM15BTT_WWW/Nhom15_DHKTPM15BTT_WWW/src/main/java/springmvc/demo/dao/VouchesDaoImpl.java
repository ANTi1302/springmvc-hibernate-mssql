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

	@Override
	public void addVoucher(Voucher theVoucher) {
		Session currentSession = sessionFactory.getCurrentSession();

		currentSession.saveOrUpdate(theVoucher);
		
	}

	@Override
	public void deleteVoucher(String voucherId) {
		Session session = sessionFactory.getCurrentSession();
		Voucher voucher = session.byId(Voucher.class).load(voucherId);
		session.delete(voucher);		
	}

	@Override
	public Voucher getVoucher(String theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Voucher theVoucher = currentSession.get(Voucher.class, theId);
		return theVoucher;
	}

	@Override
	public int demSLVoucherTheoProductId(String productId) {
		try {
			String query = "select count([voucher_id]) from [dbo].[Product]\r\n"
					+ "where [voucher_id]='"+productId+"'";
			Session currentSession = sessionFactory.getCurrentSession();

			int soVoucher = (int) currentSession.createNativeQuery(query).getSingleResult();
			// return the results
			return soVoucher;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<Object[]> getDsVoucherSearxh(int indexPage, String tenS) {
		// TODO Auto-generated method stub
				Session currentSession = sessionFactory.getCurrentSession();
				TypedQuery<Object[]> theQuery = currentSession.createQuery(" from Voucher where code  like '%"+tenS+"%'",Object[].class).setHibernateFirstResult(((indexPage-1)*6)).setMaxResults(6);
				// execute query and get result list
				List<Object[]> vouchers = theQuery.getResultList();
				// return the results
				return vouchers;
	}
}
