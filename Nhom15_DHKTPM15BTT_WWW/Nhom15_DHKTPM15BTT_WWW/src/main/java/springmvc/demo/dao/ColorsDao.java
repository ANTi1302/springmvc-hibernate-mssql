package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.entity.Color;
import springmvc.demo.entity.Product;

public interface ColorsDao {

	public List<Color> getDsColorsByIDProduct(String id) ;
//	public List<Color> getDsColorsByIDProduct(Product id) ;

	public List<Object[]> getDsColorTop9();
	public List<Object[]> getDsColorTop3();
}
