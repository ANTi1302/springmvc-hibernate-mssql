package springmvc.demo.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Branchs;
import springmvc.demo.entity.Voucher;

@Repository
public class BranchsDaoImpl extends BaseDao implements BranchsDao {

//	select * from Branchs
	@Override
	public List<Branchs> getDsBranchs() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Branchs> theQuery = currentSession.createQuery(" from Branchs", Branchs.class);
		// execute query and get result list
		List<Branchs> Branchs = theQuery.getResultList();
		// return the results
		return Branchs;
	}

	@Override
	public Branchs getDsBranchsById(String id) {
		 Session currentSession = sessionFactory.getCurrentSession();
		 Branchs theBranchs = currentSession.get(Branchs.class, id);
         return theBranchs;
	}

	@Override
	public void saveBranch(Branchs theBranchs) {
		Session currentSession = sessionFactory.getCurrentSession();

		currentSession.saveOrUpdate(theBranchs);
	}

	@Override
	public int demSLBranch() {
		try {
			String query = "SELECT count(branch_id) FROM Branchs";
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
	public List<Branchs> getDsBranchs(int index) {
		Session currentSession = sessionFactory.getCurrentSession();
		TypedQuery<Branchs> theQuery = currentSession.createQuery(" from Branchs", Branchs.class)
				.setHibernateFirstResult(((index - 1) * 6)).setMaxResults(6);
		;
		// execute query and get result list
		List<Branchs> Branchs = theQuery.getResultList();
		// return the results
		return Branchs;
	}

	@Override
	public Branchs getBranch(String theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Branchs theBranchs = currentSession.get(Branchs.class, theId);
		return theBranchs;
	}

	@Override
	public void deleteBranch(String theId) {
		Session session = sessionFactory.getCurrentSession();
		Branchs branchs = session.byId(Branchs.class).load(theId);
		session.delete(branchs);

		
	}

	@Override
	public List<Object[]> getDsBranchSearch(int indexPage, String tenS) {
		// TODO Auto-generated method stub
				Session currentSession = sessionFactory.getCurrentSession();
				TypedQuery<Object[]> theQuery = currentSession.createQuery(" from Branchs where title  like '%"+tenS+"%'",Object[].class).setHibernateFirstResult(((indexPage-1)*6)).setMaxResults(6);
				// execute query and get result list
				List<Object[]> branchs = theQuery.getResultList();
				// return the results
				return branchs;
			}

	@Override
	public int demSLBranchTheoProductId(String theId) {
		try {
			String query = "select count([branch_id]) from [dbo].[Product]\r\n"
					+ "where [branch_id]='"+theId+"'";
			Session currentSession = sessionFactory.getCurrentSession();

			int soBranch = (int) currentSession.createNativeQuery(query).getSingleResult();
			// return the results
			return soBranch;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	



}
