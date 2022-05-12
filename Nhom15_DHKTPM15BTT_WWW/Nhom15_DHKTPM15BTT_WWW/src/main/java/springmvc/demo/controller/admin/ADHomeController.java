package springmvc.demo.controller.admin;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import springmvc.demo.entity.Color;
import springmvc.demo.entity.Product;
import springmvc.demo.entity.ProductCategory;
import springmvc.demo.entity.Users;
import springmvc.demo.service.admin.AdminService;
import springmvc.demo.service.user.HomeService;

@Controller
@RequestMapping("/admin")
@MultipartConfig
public class ADHomeController{
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

	///// Dang xu ly cho nay nhaaaaaaaaaaaaaa
	@RequestMapping("/product/{index}&{tenS}")
	public String product(Model model, @PathVariable(name = "index") String index) {
		int soLuong = homeService.demSLProduct();

		if (index == null) {
			index = "1";
		}
		int indexPage = Integer.parseInt(index);
		int endpage = (soLuong + 5) / 6;
		model.addAttribute("endpage", endpage);
		model.addAttribute("tag", indexPage);
		model.addAttribute("listproduct", adminService.getDsProductTop9(indexPage));
		return "admin/product";
	}

	@RequestMapping("/formproduct")
	public String formproduct(Model model, HttpServletRequest req, @ModelAttribute("product") Product theProduct) {
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		model.addAttribute("listvoucher", adminService.getDsVoucher());
		model.addAttribute("listbranch", adminService.getDsBranchs());
		model.addAttribute("product", theProduct);
		return "admin/form_product";
	}

	@PostMapping("/saveProduct")
	private String luu(@ModelAttribute("product") Product theProduct, HttpServletRequest request) {
		theProduct.setCreatedAt(new Date());
		adminService.saveProduct(theProduct);
		HttpSession session = request.getSession();
		session.setAttribute("productname", theProduct.getName());
		session.setAttribute("productid", theProduct.getProductId());
		return "redirect:formcategoryproduct";
	}

	@RequestMapping("/formcategoryproduct")
	public String formcategoryproduct(Model model,
			@ModelAttribute("productcategory") ProductCategory thProductCategory) {
		model.addAttribute("listcategory", adminService.getDsCategory());
		return "admin/form_category_product";
	}

	@PostMapping("/saveProductCategory")
	private String luu(@ModelAttribute("productcategory") ProductCategory theProductCategory) {
		adminService.saveProductCategory(theProductCategory);
		return "redirect:formcolor";
	}

	@RequestMapping("/formcolor")
	public String formcolor(@ModelAttribute("color") Color theColor) {
		return "admin/form_color";
	}

	@PostMapping("/saveColor")
	private String luu(@ModelAttribute("color") Color theColor, HttpServletRequest req)throws ServletException, IOException {
		try {
			Part part = req.getPart("img");

			String realPath = req.getServletContext().getRealPath("/images");
			String fileName=Path.of(part.getSubmittedFileName()).getFileName().toString();
			if (!Files.exists(Path.of(realPath))) {
				Files.createDirectories(Path.of(realPath));
			}

			part.write(realPath + "/" + fileName);

			adminService.saveColor(theColor);
			

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "redirect:product/1&";

	}

	@RequestMapping("/inventory/{index}&{tenS}")
	public String inventory(Model model, @PathVariable(name = "index") String index) {

		return "admin/inventory";
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

	@RequestMapping("/formcategoryproductupdate")
	public String formcategoryproductupdate() {
		return "admin/form_category_product_update";
	}

	@RequestMapping("/formcolorupdate")
	public String formcolorupdate() {
		return "admin/form_color_update";
	}

	@RequestMapping("/formproductupdate")
	public String formproductupdate() {
		return "admin/form_product_update";
	}

}
