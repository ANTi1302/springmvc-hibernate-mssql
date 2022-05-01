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
		int soLuong = adminService.demSLOrderByStatus("Check");

		if (index == null) {
			index = "1";
		}
		int indexPage = Integer.parseInt(index);
		int endpage = (soLuong + 5) / 6;

		
		model.addAttribute("endpage", endpage);
		model.addAttribute("tag", indexPage);
		model.addAttribute("listorder", adminService.getDsOrderByStatus(indexPage, "Check"));
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
	
}
