package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.entity.Category;

public interface CategoryDao{

	public List<Category> getDsCategory();

	public List<Category> getDsCategory(int index);

	public int demSLCategory();

	
}
