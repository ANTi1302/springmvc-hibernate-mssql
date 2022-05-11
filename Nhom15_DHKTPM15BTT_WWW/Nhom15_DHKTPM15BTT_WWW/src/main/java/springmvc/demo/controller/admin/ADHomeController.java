package springmvc.demo.controller.admin;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
		int soLuong = adminService.demSLOrderByStatus();

		if (index == null) {
			index = "1";
		}
		int indexPage = Integer.parseInt(index);
		int endpage = (soLuong + 5) / 6;

		
		model.addAttribute("endpage", endpage);
		model.addAttribute("tag", indexPage);
		model.addAttribute("listorder", adminService.getDsOrderByStatus(indexPage));
		return "admin/order";
	}

	@RequestMapping("/adaccount")
	public String home() {
		return "admin/account";
	}

	@RequestMapping("/category/{index}&{tenS}")
	public String category(Model model, @PathVariable(name = "index") String index) {
		int soLuong = adminService.demSLCategory();

		if (index == null) {
			index = "1";
		}
		int indexPage = Integer.parseInt(index);
		int endpage = (soLuong + 5) / 6;
		model.addAttribute("endpage", endpage);
		model.addAttribute("tag", indexPage);
		model.addAttribute("listcate", adminService.getDsCategory(indexPage));
		return "admin/category";
	}
	@RequestMapping("/voucher/{index}&{tenS}")
	public String formvoucher(Model model, @PathVariable(name = "index") String index) {
		int soLuong = adminService.demSLVoucher();

		if (index == null) {
			index = "1";
		}
		int indexPage = Integer.parseInt(index);
		int endpage = (soLuong + 5) / 6;
		model.addAttribute("endpage", endpage);
		model.addAttribute("tag", indexPage);
		model.addAttribute("listvou", adminService.getDsVouchers(indexPage));
		return "admin/voucher";
	}
	
	@RequestMapping("/inventory/{index}&{tenS}")
	public String inventory(Model model, @PathVariable(name = "index") String index) {
	
		return "admin/inventory";
	}
	
	@RequestMapping("/product/{index}&{tenS}")
	public String product(Model model, @PathVariable(name = "index") String index) {
		return "admin/product";
	}
	
	@RequestMapping("/sales/{index}&{tenS}")
	public String sales(Model model, @PathVariable(name = "index") String index) {
		return "admin/sales";
	}
	
	@RequestMapping("/branch/{index}&{tenS}")
	public String branch(Model model, @PathVariable(name = "index") String index) {
		return "admin/branch";
	}
	
	@RequestMapping("/formcategory")
	public String formcategory() {
		return "admin/form_category";
	}

	@RequestMapping("/updatecategory")
	public String updatecategory() {
		return "admin/form_category_update";
	}
	
	@RequestMapping("/formvoucher")
	public String formvoucher() {
		return "admin/form_voucher";
	}

	@RequestMapping("/updatevoucher")
	public String updatevoucher() {
		return "admin/form_voucher_update";
	}
	

	
	@RequestMapping("/formbranch")
	public String formbranch() {
		return "admin/form_branch";
	}
	
	@RequestMapping("/formbranchupdate")
	public String formbranchupdate() {
		return "admin/form_branch_update";
	}
	
	@RequestMapping("/formcategoryproduct")
	public String formcategoryproduct() {
		return "admin/form_category_product";
	}
	
	@RequestMapping("/formcategoryproductupdate")
	public String formcategoryproductupdate() {
		return "admin/form_category_product_update";
	}
	
	@RequestMapping("/formcolorupdate")
	public String formcolorupdate() {
		return "admin/form_color_update";
	}
	
	@RequestMapping("/formcolor")
	public String formcolor() {
		return "admin/form_color";
	}
	
	@RequestMapping("/formproductupdate")
	public String formproductupdate() {
		return "admin/form_product_update";
	}
	
	@RequestMapping("/formproduct")
	public String formproduct() {
		return "admin/form_product";
	}
	
	
}
