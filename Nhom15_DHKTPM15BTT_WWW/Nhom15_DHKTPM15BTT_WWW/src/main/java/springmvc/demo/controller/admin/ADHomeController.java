package springmvc.demo.controller.admin;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

import springmvc.demo.entity.Branchs;
import springmvc.demo.entity.Category;
import springmvc.demo.entity.Color;
import springmvc.demo.entity.Product;
import springmvc.demo.entity.ProductCategory;
import springmvc.demo.entity.Users;
import springmvc.demo.entity.Voucher;
import springmvc.demo.service.admin.AdminService;
import springmvc.demo.service.user.HomeService;

@Controller
@RequestMapping("/admin")
public class ADHomeController {
	@Autowired
	AdminService adminService;
	@Autowired
	HomeService homeService;
	@Autowired
	private Cloudinary cloudinary;

	@RequestMapping("/home-admin")
	public String home(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		List<Users> ad=new ArrayList<>();
		if (username != null) {
			model.addAttribute("list", adminService.inventoryByCategory(username.getUserId()));
			model.addAttribute("listsale", adminService.revenueByCategory(username.getUserId()));
			model.addAttribute("listcus", adminService.revenueByCustomer(username.getUserId()));
			model.addAttribute("listyear", adminService.revenueByYear(username.getUserId()));
			model.addAttribute("listmonth", adminService.revenueByMonth(username.getUserId()));
			model.addAttribute("listquarter", adminService.revenueByQuater(username.getUserId()));
			model.addAttribute("count", adminService.countQuantityProduct(username.getUserId()));
			model.addAttribute("countorder", adminService.countOrder(username.getUserId()));
			model.addAttribute("salesorder", adminService.salesOrderDetail(username.getUserId()));
			model.addAttribute("order", adminService.getDs40Order(username.getUserId(), "Check"));
			if (username.getRole().getTitle().equals("Admin01")) {
				ad.add(username);
				req.getSession().setAttribute("accAd", ad);
			
			}
			return "admin/index";
		} else {
			return "redirect:/login";
		}

	}

	@RequestMapping("/adorder/{index}&{tenS}")
	public String order(Model model, @PathVariable(name = "index") String index, HttpServletRequest req) {
		int soLuong = adminService.demSLOrderByStatus();
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username != null) {
			if (index == null) {
				index = "1";
			}
			int indexPage = Integer.parseInt(index);
			int endpage = (soLuong + 5) / 6;

			model.addAttribute("endpage", endpage);
			model.addAttribute("tag", indexPage);
			model.addAttribute("listorder", adminService.getDsOrderByStatus(indexPage, username.getUserId()));
			return "admin/order";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping({ "/filterCheck/{index}&" })
	public String filter(Model theModel, @RequestParam("Check") String tenS, @PathVariable(name = "index") String index,
			HttpServletRequest req) {
		int soLuong = adminService.demSLOrderByStatus();
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username != null) {
			if (index == null) {
				index = "1";
			}
			int indexPage = Integer.parseInt(index);
			int endpage = (soLuong + 5) / 6;

			theModel.addAttribute("endpage", endpage);
			theModel.addAttribute("tag", indexPage);
			req.setAttribute("tenS", tenS);
			theModel.addAttribute("listorder",
					adminService.getDsOrderByStatusCheck(indexPage, username.getUserId(), tenS));
			return "admin/order";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping({ "/filterConfirm/{index}&" })
	public String filterConfirm(Model theModel, @RequestParam("Confirm") String tenS,
			@PathVariable(name = "index") String index, HttpServletRequest req) {

		int soLuong = adminService.demSLOrderByStatus();
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username != null) {
			if (index == null) {
				index = "1";
			}
			int indexPage = Integer.parseInt(index);
			int endpage = (soLuong + 5) / 6;

			theModel.addAttribute("endpage", endpage);
			theModel.addAttribute("tag", indexPage);
			req.setAttribute("tenS", tenS);
			theModel.addAttribute("listorder",
					adminService.getDsOrderByStatusCheck(indexPage, username.getUserId(), tenS));
			return "admin/order";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping({ "/filterCancel/{index}&" })
	public String filterCancel(Model theModel, @RequestParam("Cancel") String tenS,
			@PathVariable(name = "index") String index, HttpServletRequest req) {
		int soLuong = adminService.demSLOrderByStatus();
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username != null) {
			if (index == null) {
				index = "1";
			}
			int indexPage = Integer.parseInt(index);
			int endpage = (soLuong + 5) / 6;

			theModel.addAttribute("endpage", endpage);
			theModel.addAttribute("tag", indexPage);
			req.setAttribute("tenS", tenS);
			theModel.addAttribute("listorder",
					adminService.getDsOrderByStatusCheck(indexPage, username.getUserId(), tenS));
			return "admin/order";
		} else {
			return "redirect:/login";
		}
	}

	@GetMapping("/confirm")
	private String confirm(@RequestParam("userId") String id, HttpServletRequest request) {

		adminService.confirm(id, "Confirm");
		return "redirect:adorder/1&";
	}

	@GetMapping("/cancel")
	private String cancel(@RequestParam("userId") String id, HttpServletRequest request) {

		adminService.confirm(id, "Cancel");
		return "redirect:adorder/1&";
	}

	@RequestMapping("/adaccount")
	public String home(HttpServletResponse response, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Users username = (Users) session.getAttribute("acc");
		request.setAttribute("listuser", homeService.getUsers(username.getUserId()));
		request.setAttribute("soLuong", homeService.demSLCartTheoIdUser(username.getUserId()));
		return "admin/account";
	}
	@GetMapping("/updatead")
	public String updatead(HttpServletResponse response, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Users username = (Users) session.getAttribute("acc");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		username.setFirstName(firstName);
		username.setLastName(lastName);
		username.setEmail(email);
		username.setPhone(phone);
		username.setAddress(address);
		username.setAccessTokenID(username.getAccessTokenID());
		username.setPassword(username.getPassword());
		username.setRole(username.getRole());
		homeService.saveUser(username, username.getUserId());
		// set customer as a model attribute to pre-populate the form
		return "redirect:adaccount";
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
	public String product(Model model, @PathVariable(name = "index") String index,
			@PathVariable(name = "tenS") String tenS, HttpServletRequest req) {
		int soLuong = homeService.demSLProduct();
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username != null) {
			if (index == null) {
				index = "1";
			}
			int indexPage = Integer.parseInt(index);
			int endpage = (soLuong + 5) / 6;

			model.addAttribute("listproduct", adminService.getDsProductTop9(indexPage, username.getUserId()));

			// add the customers to the model

			model.addAttribute("endpage", endpage);
			model.addAttribute("tag", indexPage);

			return "admin/product";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping("/formproduct")
	public String formproduct(Model model, HttpServletRequest req, @ModelAttribute("product") Product theProduct) {
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username == null) {
			return "redirect:/login";
		}
		model.addAttribute("listvoucher", adminService.getDsVoucher());
		model.addAttribute("listbranch", adminService.getDsBranchs());
		model.addAttribute("product", theProduct);
		return "admin/form_product";
	}

	@RequestMapping("/formproductupload")
	public String formproductupload(Model model, HttpServletRequest req,
			@ModelAttribute("product") Product theProduct) {
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username == null) {
			return "redirect:/login";
		}
		model.addAttribute("listvoucher", adminService.getDsVoucher());
		model.addAttribute("listbranch", adminService.getDsBranchs());
		model.addAttribute("product", theProduct);
		return "admin/form_product_upload";
	}

	@PostMapping("/saveProduct")
	private String luu(@ModelAttribute("product") @Valid Product theProduct, BindingResult result,
			HttpServletRequest request,Model model) {
		if (!(result.hasErrors())) {
			theProduct.setCreatedAt(new Date());
			theProduct.setSale((float) (theProduct.getPrice()-(theProduct.getPrice()*theProduct.getSale())));
			adminService.saveProduct(theProduct);
			HttpSession session = request.getSession();
			session.setAttribute("productname", theProduct.getName());
			session.setAttribute("productid", theProduct.getProductId());
			return "redirect:formcategoryproduct";
		}
		model.addAttribute("listvoucher", adminService.getDsVoucher());
		model.addAttribute("listbranch", adminService.getDsBranchs());
		return "admin/form_product";

	}

	@PostMapping("/updateProduct")
	private String update(@ModelAttribute("product") Product theProduct, HttpServletRequest request) {
		theProduct.setUpdateAt(new Date());
		adminService.saveProduct(theProduct);
		HttpSession session = request.getSession();
		session.setAttribute("productname", theProduct.getName());
		session.setAttribute("productid", theProduct.getProductId());
		return "redirect:product/1&";
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
	private String luu(@ModelAttribute("color") @Valid Color theColor,BindingResult result, HttpServletRequest req)
			throws ServletException, IOException {
		try {
			Map r = this.cloudinary.uploader().upload(theColor.getFile().getBytes(),
					ObjectUtils.asMap("resource_type", "auto"));
			String img = (String) r.get("secure_url");
			theColor.setImg(img);
			adminService.saveColor(theColor);
			return "redirect:product/1&";
		} catch (Exception e) {
			// TODO: handle exception
			System.err.print("ADD PRODUCT " + e.getMessage());
			req.setAttribute("err", e.getMessage());
		}
		return "admin/form_color";

	}

	@RequestMapping("/delete")
	private String delete(Model model, @RequestParam("productId") String id) {
		if (adminService.demSLOrderDeatilTheoProductId(id) == 0 && adminService.demSLCartTheoProductId(id) == 0) {
			adminService.deleteColor(id);
			adminService.deleteProductCategory(id);

			adminService.deleteProduct(id);
			return "redirect:product/1&";

		} else {
			adminService.updateProductByStatus(id);
			return "redirect:product/1&";
		}

	}

	@RequestMapping("/update")
	private String update(Model model, @RequestParam("productId") String id, HttpServletRequest req) {
		Product st = adminService.getProductById(id);

		model.addAttribute("listvoucher", adminService.getDsVoucher());
		model.addAttribute("listbranch", adminService.getDsBranchs());
		model.addAttribute("product", st);
		return "admin/form_product_update";
	}

	@GetMapping({ "/search/{index}&" })
	public String searchProduct(Model theModel, @RequestParam("tenS") String tenS,
			@PathVariable(name = "index") String index, HttpServletRequest req) {
		String ten = tenS.trim();
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username != null) {
			String[] tenx = ten.split("[,; \\t\\n\\r]+");
			for (String string : tenx) {
				if (index == null) {
					index = "1";
				}

				int indexPage = Integer.parseInt(index);
				int soLuong = homeService.demSLKhiSearchTheoIDSaller(string, username.getUserId());
				int endpage = (soLuong + 5) / 6;

				theModel.addAttribute("listproduct",
						adminService.getDsProductTop9ToSearxh(indexPage, username.getUserId(), string));
				theModel.addAttribute("endpage", endpage);
				theModel.addAttribute("tag", indexPage);
			}
			req.setAttribute("tenS", tenS);
			return "admin/product";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping("/inventory/{index}&")
	public String inventory(Model model, @PathVariable(name = "index") String index, HttpServletRequest req) {
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username != null) {
			if (index == null) {
				index = "1";
			}

			int indexPage = Integer.parseInt(index);
			int soLuong = adminService.countInventoryByCategory(username.getUserId());
			int endpage = (soLuong + 5) / 6;

			model.addAttribute("list", adminService.inventoryByCategory(indexPage, username.getUserId()));
			model.addAttribute("endpage", endpage);
			model.addAttribute("tag", indexPage);
			return "admin/inventory";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping("/searchDate/{index}&")
	public String inventoryDate(Model model, @PathVariable(name = "index") String index, HttpServletRequest req,
			@RequestParam("start") String start, @RequestParam("end") String end) {
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username != null) {
			if (index == null) {
				index = "1";
			}

			int indexPage = Integer.parseInt(index);
			int soLuong = adminService.countInventoryByCategory(username.getUserId());
			int endpage = (soLuong + 5) / 6;

			model.addAttribute("list",
					adminService.inventoryByCategoryDate(start, end, indexPage, username.getUserId()));
			model.addAttribute("endpage", endpage);
			model.addAttribute("tag", indexPage);
			model.addAttribute("start", start);
			model.addAttribute("end", end);
			return "admin/inventory";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping("/sales/{index}&{tenS}")
	public String sales(Model model, @PathVariable(name = "index") String index, HttpServletRequest req) {
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username != null) {

			if (index == null) {
				index = "1";
			}

			int indexPage = Integer.parseInt(index);
			int soLuong = adminService.countRevenueByCategory(username.getUserId());
			int endpage = (soLuong + 5) / 6;

			model.addAttribute("list", adminService.revenueByCategory(indexPage, username.getUserId()));
			model.addAttribute("endpage", endpage);
			model.addAttribute("tag", indexPage);
			return "admin/sales";
		} else {
			return "redirect:/login";
		}
	}

	@GetMapping({ "/revenueyear/{index}&" })
	public String revenueyear(Model theModel, @PathVariable(name = "index") String index, HttpServletRequest req) {
		int soLuong = adminService.demSLOrderByStatus();
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username != null) {
			if (index == null) {
				index = "1";
			}
			int indexPage = Integer.parseInt(index);
			int endpage = (soLuong + 5) / 6;

			theModel.addAttribute("endpage", endpage);
			theModel.addAttribute("tag", indexPage);
			theModel.addAttribute("list", adminService.revenueByYear(indexPage, username.getUserId()));
			return "admin/revenuesales";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping({ "/revenuemonth/{index}&" })
	public String revenuemonth(Model theModel, @PathVariable(name = "index") String index, HttpServletRequest req) {
		int soLuong = adminService.demSLOrderByStatus();
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username != null) {

			if (index == null) {
				index = "1";
			}
			int indexPage = Integer.parseInt(index);
			int endpage = (soLuong + 5) / 6;

			theModel.addAttribute("endpage", endpage);
			theModel.addAttribute("tag", indexPage);
			theModel.addAttribute("list", adminService.revenueByMonth(indexPage, username.getUserId()));
			return "admin/revenuesales";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping({ "/revenuequarter/{index}&" })
	public String revenuequarter(Model theModel, @PathVariable(name = "index") String index, HttpServletRequest req) {
		int soLuong = adminService.demSLOrderByStatus();
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username != null) {

			if (index == null) {
				index = "1";
			}
			int indexPage = Integer.parseInt(index);
			int endpage = (soLuong + 5) / 6;

			theModel.addAttribute("endpage", endpage);
			theModel.addAttribute("tag", indexPage);
			theModel.addAttribute("list", adminService.revenueByQuater(indexPage, username.getUserId()));
			return "admin/revenuesales";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping({ "/revenueall/{index}&" })
	public String revenueall(Model theModel, @PathVariable(name = "index") String index, HttpServletRequest req) {

		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username != null) {
			if (index == null) {
				index = "1";
			}
			int soLuong = adminService.countRevenueByCategory(username.getUserId());
			int indexPage = Integer.parseInt(index);
			int endpage = (soLuong + 5) / 6;

			theModel.addAttribute("endpage", endpage);
			theModel.addAttribute("tag", indexPage);
			theModel.addAttribute("list", adminService.revenueByCategory(indexPage, username.getUserId()));
			return "admin/sales";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping("/branch/{index}&{tenS}")
	public String branch(Model model, @PathVariable(name = "index") String index) {
		int soLuong = adminService.demSLBranch();

		if (index == null) {
			index = "1";
		}
		int indexPage = Integer.parseInt(index);
		int endpage = (soLuong + 5) / 6;
		model.addAttribute("endpage", endpage);
		model.addAttribute("tag", indexPage);
		model.addAttribute("listbranch", adminService.getDsBranchs(indexPage));
		return "admin/branch";
	}

	@RequestMapping("/formcategory")
	public String formcategory(@ModelAttribute("category") Category theCategory) {
		return "admin/form_category";
	}

	@PostMapping("/saveCategory")
	private String saveCategory(@ModelAttribute("category") @Valid Category theCategory,BindingResult result, HttpServletRequest request)
			throws ServletException, IOException {

		try {
			Map r = this.cloudinary.uploader().upload(theCategory.getFile().getBytes(),
					ObjectUtils.asMap("resource_type", "auto"));
			String icon = (String) r.get("secure_url");
			theCategory.setIcon(icon);
			adminService.saveCategory(theCategory);
			return "redirect:category/1&";
		} catch (Exception e) {
			// TODO: handle exception
			System.err.print("Add Category" + e.getMessage());
		}
		return "admin/form_category";

	}

	@RequestMapping("/updatecategory")
	public String updatecategory(@RequestParam("categoryId") String theId, Model theModel) {
		Category theCategory = adminService.getCategory(theId);
		theModel.addAttribute("category", theCategory);

		return "admin/form_category_update";
	}

	@RequestMapping("/deleteCategory")
	public String deleteCategory(@RequestParam("categoryId") String categoryId) {
		if (adminService.demSLCartTheoProductId(categoryId) == 0) {
			adminService.deleteCategory(categoryId);
			return "redirect:category/1&";

		} else {

			return "redirect:category/1&";
		}
	}

	@RequestMapping("/formvoucher")
	public String formvoucher(Model model, HttpServletRequest req, @ModelAttribute("voucher") Voucher theVoucher) {

		Voucher theVouchers = new Voucher();
		model.addAttribute("voucher", theVoucher);

		return "admin/form_voucher";
	}

	@PostMapping("/saveVoucher")
	private String saveVoucher(@ModelAttribute("voucher")  @Valid  Voucher theVoucher,BindingResult result, HttpServletRequest request) {
		if (!(result.hasErrors())) {

		theVoucher.setCreatedAt(new Date());
		theVoucher.setUpdateAt(new Date());

		adminService.saveVoucher(theVoucher);

		return "redirect:voucher/1&";
		}
		return "admin/form_voucher";
	}

	@RequestMapping("/updatevoucher")
	public String updatevoucher(@RequestParam("voucherId") String theId, Model theModel) {
		Voucher theVoucher = adminService.getVoucher(theId);
		theModel.addAttribute("voucher", theVoucher);
		return "admin/form_voucher_update";
	}

	@RequestMapping("/deletevoucher")
	public String deleteVoucher(@RequestParam("voucherId") String voucherId) {

		if (adminService.demSLVoucherTheoProductId(voucherId) == 0) {
			adminService.deleteVoucher(voucherId);
			return "redirect:voucher/1&";

		} else {

			return "redirect:voucher/1&";
		}

	}

	@GetMapping({ "/searchvoucher/{index}&" })
	public String searchvoucher(Model theModel, @RequestParam("tenS") String tenS,
			@PathVariable(name = "index") String index, HttpServletRequest req) {
		String ten = tenS.trim();
		HttpSession session = req.getSession();

		String[] tenx = ten.split("[,; \\t\\n\\r]+");
		for (String string : tenx) {
			if (index == null) {
				index = "1";
			}

			int indexPage = Integer.parseInt(index);
			int soLuong = adminService.demSLVoucher();

			int endpage = (soLuong + 5) / 6;

			theModel.addAttribute("listvou", adminService.getDsVoucherSearxh(indexPage, string));
			theModel.addAttribute("endpage", endpage);
			theModel.addAttribute("tag", indexPage);
		}
		req.setAttribute("tenS", tenS);
		return "admin/voucher";
	}

	@GetMapping({ "/searchbranch/{index}&" })
	public String searchbranch(Model theModel, @RequestParam("tenS") String tenS,
			@PathVariable(name = "index") String index, HttpServletRequest req) {
		String ten = tenS.trim();
		HttpSession session = req.getSession();

		String[] tenx = ten.split("[,; \\t\\n\\r]+");
		for (String string : tenx) {
			if (index == null) {
				index = "1";
			}

			int indexPage = Integer.parseInt(index);
			int soLuong = adminService.demSLBranch();

			int endpage = (soLuong + 5) / 6;

			theModel.addAttribute("listbranch", adminService.getDsBranchSearch(indexPage, string));
			theModel.addAttribute("endpage", endpage);
			theModel.addAttribute("tag", indexPage);
		}
		req.setAttribute("tenS", tenS);
		return "admin/branch";
	}

	@GetMapping({ "/searchcategory/{index}&" })
	public String searchcategory(Model theModel, @RequestParam("tenS") String tenS,
			@PathVariable(name = "index") String index, HttpServletRequest req) {
		String ten = tenS.trim();
		HttpSession session = req.getSession();

		String[] tenx = ten.split("[,; \\t\\n\\r]+");
		for (String string : tenx) {
			if (index == null) {
				index = "1";
			}

			int indexPage = Integer.parseInt(index);
			int soLuong = adminService.demSLCategory();

			int endpage = (soLuong + 5) / 6;

			theModel.addAttribute("listcate", adminService.getDsCategorySearch(indexPage, string));
			theModel.addAttribute("endpage", endpage);
			theModel.addAttribute("tag", indexPage);
		}
		req.setAttribute("tenS", tenS);
		return "admin/category";
	}

	@RequestMapping("/formbranch")
	public String formbranch(Model model, HttpServletRequest req, @ModelAttribute("branch") Branchs theBranchs) {

		return "admin/form_branch";
	}

	@PostMapping("/saveBranch")
	private String saveBranch(@ModelAttribute("branch") @Valid Branchs theBranchs,BindingResult result, HttpServletRequest request)
			throws ServletException, IOException {

		try {
			Map r = this.cloudinary.uploader().upload(theBranchs.getFile().getBytes(),
					ObjectUtils.asMap("resource_type", "auto"));
			String img = (String) r.get("secure_url");
			theBranchs.setImg(img);
			adminService.saveBranch(theBranchs);
			return "redirect:branch/1&";
		} catch (Exception e) {
			// TODO: handle exception
			System.err.print("Add Branch" + e.getMessage());
			request.setAttribute("err", e.getMessage());
		}
		return "admin/form_branch";

	}

	@RequestMapping("/formbranchupdate")
	public String formbranchupdate(@RequestParam("branchId") String theId, Model theModel) {

		Branchs theBranchs = adminService.getBranch(theId);
		theModel.addAttribute("branch", theBranchs);
		return "admin/form_branch_update";

	}

	@RequestMapping("/deleteBranch")
	public String deleteCustomer(@RequestParam("branchId") String theId) {

		if (adminService.demSLBranchTheoProductId(theId) == 0 ) {
			adminService.deleteBranch(theId);
			return "redirect:branch/1&";

		} else {
			
			return "redirect:branch/1&";
		}

	}

}
