package springmvc.demo.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.demo.dao.ColorsDao;
import springmvc.demo.dao.MenusDao;
import springmvc.demo.dao.ProductDao;
import springmvc.demo.dto.ProductDto;
import springmvc.demo.entity.Color;
import springmvc.demo.entity.Menus;
import springmvc.demo.entity.Product;


@Service
public class HomeServiceImpl implements HomeService{

	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private MenusDao menusDao;
	
	@Autowired
	private ColorsDao colorsDao;
	
	@Override
	@Transactional
	public List<Product> dsProduct() {
		// TODO Auto-generated method stub
		return productDao.dsProduct();
	}

//	@Override
//	@Transactional
//	public List<Product> dsProductTop6(int index) {
//		// TODO Auto-generated method stub
//		return productDao.dsProductTop6(index);
//	}

//	@Override
//	@Transactional
//	public List<Product> dsProductTop6(int index, String ten) {
//		// TODO Auto-generated method stub
//		return productDao.dsProductTop6(index, ten);
//	}

	@Override
	@Transactional
	
	public List<Object[]> dsProductTop9() {
		// TODO Auto-generated method stub
		return productDao.dsProductTop9();
	}

	@Override
	@Transactional
	public int demSLProduct() {
		// TODO Auto-generated method stub
		return productDao.demSLProduct();
	}

	@Override
	@Transactional
	public int demSLKhiSearch(String ten) {
		// TODO Auto-generated method stub
		return productDao.demSLKhiSearch(ten);
	}

	@Override
	@Transactional
	public Product thongTinChiTiet(int id) {
		// TODO Auto-generated method stub
		return productDao.thongTinChiTiet(id);
	}

	@Override
	@Transactional
	public List<Product> timKiemTheoTen(String ten) {
		// TODO Auto-generated method stub
		return productDao.timKiemTheoTen(ten);
	}

	@Override
	@Transactional
	public Product getProduct(String txt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public List<Product> dsProductTheoIDCatorogyTop6(int index, int ten) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public int demSLKhiSearchTheoIDCatorogy(int ten) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	@Transactional
	public boolean capNhatProduct(int product) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	@Transactional
	public List<Menus> getDsMenus() {
		// TODO Auto-generated method stub
		return menusDao.getDsMenus();
	}

	@Override
	@Transactional
	public List<Color> getDsColorsByIDProduct(String id) {
		// TODO Auto-generated method stub
		return colorsDao.getDsColorsByIDProduct(id);
	}

	@Override
	@Transactional
	public List<Object[]> getDsColorTop9() {
		// TODO Auto-generated method stub
		return colorsDao.getDsColorTop9();
	}

	@Override
	@Transactional
	public List<Object[]> getDsColorTop3() {
		// TODO Auto-generated method stub
		return colorsDao.getDsColorTop3();
	}

	@Override
	@Transactional
	public List<Object[]> getDsColorTop6(int index) {
		// TODO Auto-generated method stub
		return colorsDao.dsProductTop6(index);
	}


}
