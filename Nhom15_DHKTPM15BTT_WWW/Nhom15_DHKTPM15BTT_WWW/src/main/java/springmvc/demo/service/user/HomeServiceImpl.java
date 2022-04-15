package springmvc.demo.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.demo.dao.BranchsDao;
import springmvc.demo.dao.CategoryDao;
import springmvc.demo.dao.ColorsDao;
import springmvc.demo.dao.MenusDao;
import springmvc.demo.dao.ProductDao;
import springmvc.demo.dto.ProductDto;
import springmvc.demo.entity.Branchs;
import springmvc.demo.entity.Category;
import springmvc.demo.entity.Color;
import springmvc.demo.entity.Menus;
import springmvc.demo.entity.Product;


@Service
@Transactional
public class HomeServiceImpl implements HomeService{

	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private MenusDao menusDao;
	
	@Autowired
	private ColorsDao colorsDao;
	
	@Autowired
	private CategoryDao categoryDao;
	
	@Autowired
	private BranchsDao branchsDao;
	
	@Override
	
	public List<Product> dsProduct() {
		// TODO Auto-generated method stub
		return productDao.dsProduct();
	}

	@Override
	
	public int demSLProduct() {
		// TODO Auto-generated method stub
		return productDao.demSLProduct();
	}

	@Override
	
	public int demSLKhiSearch(String ten) {
		// TODO Auto-generated method stub
		return productDao.demSLKhiSearch(ten);
	}

	@Override
	
	public List<Object[]> thongTinChiTiet(String id) {
		// TODO Auto-generated method stub
		return colorsDao.thongTinChiTiet(id);
	}

	@Override
	
	public List<Product> timKiemTheoTen(String ten) {
		// TODO Auto-generated method stub
		return productDao.timKiemTheoTen(ten);
	}

	@Override
	
	public Product getProduct(String txt) {
		// TODO Auto-generated method stub
		return productDao.getProduct(txt);
	}

	@Override
	
	public List<Product> dsProductTheoIDCatorogyTop6(int index, int ten) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	
	public int demSLKhiSearchTheoIDCatorogy(int ten) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	
	public boolean capNhatProduct(int product) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	
	public List<Menus> getDsMenus() {
		// TODO Auto-generated method stub
		return menusDao.getDsMenus();
	}

	@Override
	
	public List<Color> getDsColorsByIDProduct(String id) {
		// TODO Auto-generated method stub
		return colorsDao.getDsColorsByIDProduct(id);
	}

	@Override
	
	public List<Object[]> getDsColorTop9() {
		// TODO Auto-generated method stub
		return colorsDao.getDsColorTop9();
	}

	@Override
	
	public List<Object[]> getDsColorTop3() {
		// TODO Auto-generated method stub
		return colorsDao.getDsColorTop3();
	}

	@Override
	
	public List<Object[]> getDsColorTop6(int index) {
		// TODO Auto-generated method stub
		return colorsDao.dsProductTop6(index);
	}

	@Override
	
	public List<Category> getDsCategory() {
		// TODO Auto-generated method stub
		return categoryDao.getDsCategory();
	}

	@Override
	
	public List<Branchs> getDsBranchs() {
		// TODO Auto-generated method stub
		return branchsDao.getDsBranchs();
	}

	@Override
	public List<Object[]> dsColorTop6(int index, String string) {
		// TODO Auto-generated method stub
		return colorsDao. dsColorTop6(index,string);
	}

	@Override
	public List<Object[]> dsColor() {
		// TODO Auto-generated method stub
		return colorsDao.dsColor();
	}


}
