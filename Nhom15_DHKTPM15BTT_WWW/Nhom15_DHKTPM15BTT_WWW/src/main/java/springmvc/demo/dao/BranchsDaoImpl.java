package springmvc.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Branchs;

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



}
