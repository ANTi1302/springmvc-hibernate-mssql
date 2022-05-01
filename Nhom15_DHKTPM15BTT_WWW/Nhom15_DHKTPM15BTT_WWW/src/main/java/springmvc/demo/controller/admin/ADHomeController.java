package springmvc.demo.controller.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import springmvc.demo.entity.OrderDetail;
import springmvc.demo.entity.Product;
import springmvc.demo.service.admin.AdminService;
import springmvc.demo.service.user.HomeService;

@Controller
@RequestMapping("/admin")
public class ADHomeController {
	@Autowired
	AdminService adminService;
	@Autowired
	HomeService homeService;

	@RequestMapping("/home-admin")
	public String home(Model model) {

		return "admin/index";
	}

	@RequestMapping("/adorder/{index}&{tenS}")
	public String order(Model model, @PathVariable(name = "index") String index) {
		int soLuong = adminService.demSLOrderByStatus("Check");

		if (index == null) {
			index = "1";
		}
		int indexPage = Integer.parseInt(index);
		int endpage = (soLuong + 5) / 6;
		int soLuongProduct = homeService.demSLProduct();

		
		model.addAttribute("endpage", endpage);
		model.addAttribute("tag", indexPage);
		model.addAttribute("tongSLProduct", soLuongProduct);
		model.addAttribute("listorder", adminService.getDsOrderByStatus(indexPage, "Check"));
		return "admin/order";
	}

	@RequestMapping("/adaccount")
	public String home() {
		return "admin/account";
	}

	@RequestMapping("/category")
	public String category() {
		return "admin/category";
	}

	@RequestMapping("/formcategory")
	public String formcategory() {
		return "admin/form_category";
	}

	@RequestMapping("/slide")
	public String slide() {
		return "admin/slides";
	}

	@RequestMapping("/formslide")
	public String formslide() {
		return "admin/form_slide";
	}

	@RequestMapping("/voucher")
	public String formvoucher() {
		return "admin/voucher";
	}
}