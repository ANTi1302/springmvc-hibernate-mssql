package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.entity.Color;
import springmvc.demo.entity.Product;

public interface ColorsDao {

	public List<Color> getDsColorsByIDProduct(String id) ;
	public List<Object[]> getDsColorTop9();
	public List<Object[]> getDsColorTop3();
	public List<Object[]> dsProductTop6(int index) ;
	public List<Object[]> dsColor();
	public List<Object[]> dsColorTop6(int index, String string);
	public List<Object[]> thongTinChiTiet(String id) ;
}
