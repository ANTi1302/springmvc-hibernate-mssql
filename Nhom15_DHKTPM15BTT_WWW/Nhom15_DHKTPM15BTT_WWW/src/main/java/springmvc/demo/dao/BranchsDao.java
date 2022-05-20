package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.entity.Branchs;

public interface BranchsDao{

	public List<Branchs> getDsBranchs();

	public Branchs getDsBranchsById(String id);

	public void saveBranch(Branchs theBranchs);

	public int demSLBranch();

	public List<Branchs> getDsBranchs(int index);

	public Branchs getBranch(String theId);

	public void deleteBranch(String theId);

	public List<Object[]> getDsBranchSearch(int indexPage, String tenS);

	

	
}
