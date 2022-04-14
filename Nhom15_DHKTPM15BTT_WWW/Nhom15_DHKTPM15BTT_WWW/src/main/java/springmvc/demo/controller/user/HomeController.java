package springmvc.demo.controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import springmvc.demo.entity.Color;
import springmvc.demo.entity.Product;

@Controller
public class HomeController extends BaseController {

	@RequestMapping({ "/home", "/trang-chu" })
	public ModelAndView index(HttpServletResponse resp, HttpServletRequest req) {
		modelAndView.addObject("listProduct", homeServer.getDsColorTop9());
		modelAndView.addObject("listProductSlides", homeServer.getDsColorTop3());
		try {
			Cookie arr[] = req.getCookies();

			PrintWriter out = resp.getWriter();
			List<Product> listCc = new ArrayList<>();
			for (Cookie o : arr) {
				if (o.getName().equals("productID")) {
					String txt[] = o.getValue().split("/");
					for (String s : txt) {
						listCc.add(homeServer.getProduct(s));
					}
				}
			}
			int soLuong = 0;
			for (int i = 0; i < listCc.size(); i++) {
				int count = 1;
				for (int j = i + 1; j < listCc.size(); j++) {
					if (listCc.get(i).getProductId() == listCc.get(j).getProductId()) {
						count++;
						listCc.remove(j);
						j--;
						listCc.get(i).setAmount(count);
					}
				}
				soLuong++;
			}
			///
			req.setAttribute("soLuong", soLuong);

		} catch (Exception e) {
			// TODO: handle exception

		}

		modelAndView.setViewName("customer/index");
		return modelAndView;
	}

	@RequestMapping("/shop")
	public ModelAndView shop(HttpServletResponse resp, HttpServletRequest req) throws IOException {
		String indexPage = req.getParameter("index");

		if (indexPage == null) {
			indexPage = "1";
		}
		int index = Integer.parseInt(indexPage);
		List<Product> products = homeServer.dsProductTop6(index);

		// Phan trang
		int soLuong = homeServer.demSLProduct();

		int endpage = soLuong / 3;
		if (soLuong % 3 != 0) {
			endpage++;
		}

		// dem soluong Cart
		Cookie arr[] = req.getCookies();
		PrintWriter out = resp.getWriter();
		List<Product> listCc = new ArrayList<>();
		for (Cookie o : arr) {
			if (o.getName().equals("productID")) {
				String txt[] = o.getValue().split("/");
				for (String s : txt) {
					listCc.add(homeServer.getProduct(s));
				}
			}
		}
		int soLuongCc = 0;
		for (int i = 0; i < listCc.size(); i++) {
			int count = 1;
			for (int j = i + 1; j < listCc.size(); j++) {
				if (listCc.get(i).getProductId() == listCc.get(j).getProductId()) {
					count++;
					listCc.remove(j);
					j--;
					listCc.get(i).setAmount(count);
				}
			}
			soLuongCc++;
		}
		// So luong Tong Product
		int soLuongProduct = homeServer.demSLProduct();
		// Add cart wh
		req.setAttribute("tongSLProduct", soLuongProduct);
		req.setAttribute("soLuong", soLuongCc);
		req.setAttribute("dsProduct", products);
		req.setAttribute("endpage", endpage);
		req.setAttribute("tag", index);
		modelAndView.setViewName("customer/shop");
		return modelAndView;
	}

	@RequestMapping("/cart")
	public ModelAndView cart(HttpServletResponse resp, HttpServletRequest req) throws IOException {
		String id = req.getParameter("id");
		Cookie arr[] = req.getCookies();
		String txt = "";
		for (Cookie o : arr) {
			if (o.getName().equals("productID")) {
				txt = txt + o.getValue();
				o.setMaxAge(0);
				resp.addCookie(o);
			}
		}
		if (txt.isEmpty()) {
			txt = id;
		} else {
			txt = txt + "/" + id;
		}
		Cookie c = new Cookie("productID", txt);
		c.setMaxAge(60 * 60 * 24);
		resp.addCookie(c);
		resp.sendRedirect("print");
		modelAndView.setViewName("redirect:print");
		return modelAndView;
	}

	@RequestMapping("/print")
	public ModelAndView print(HttpServletResponse response, HttpServletRequest request) throws IOException {
		Cookie arr[] = request.getCookies();
		PrintWriter out = response.getWriter();
		List<Product> list = new ArrayList<>();

		for (Cookie o : arr) {
			if (o.getName().equals("productID")) {
				String txt[] = o.getValue().split("/");
				for (String s : txt) {
					list.add(homeServer.getProduct(s));
				}
			}
		}
		int soLuong = 0;
		for (int i = 0; i < list.size(); i++) {
			int count = 1;
			for (int j = i + 1; j < list.size(); j++) {
				if (list.get(i).getProductId() == list.get(j).getProductId()) {
					count++;
					list.remove(j);
					j--;
					list.get(i).setAmount(count);
				}
			}
			soLuong++;
		}

		double total = 0;
		for (Product o : list) {
			total = total + o.getAmount() * o.getPrice();
		}
		HttpSession session01 = request.getSession();
		request.setAttribute("list", list);
		request.setAttribute("total", total);
		request.setAttribute("vat", 0.1 * total);
		request.setAttribute("sum", 1.1 * total);
		session01.setAttribute("total", total);
		request.setAttribute("soLuong", soLuong);
		modelAndView.setViewName("customer/cart");
		return modelAndView;
	}

	@RequestMapping("/check")
	public ModelAndView check(HttpServletResponse response, HttpServletRequest request) throws IOException {
		Cookie arr[] = request.getCookies();
		PrintWriter out = response.getWriter();
		List<Product> list = new ArrayList<>();

		for (Cookie o : arr) {
			if (o.getName().equals("productID")) {
				String txt[] = o.getValue().split("/");
				for (String s : txt) {
					list.add(homeServer.getProduct(s));
				}
			}
		}
		int soLuong = 0;
		for (int i = 0; i < list.size(); i++) {
			int count = 1;
			for (int j = i + 1; j < list.size(); j++) {
				if (list.get(i).getProductId() == list.get(j).getProductId()) {
					count++;
					list.remove(j);
					j--;
					list.get(i).setAmount(count);
				}
			}
			soLuong++;
		}

		double total = 0;
		for (Product o : list) {
			total = total + o.getAmount() * o.getPrice();
		}
		HttpSession session01 = request.getSession();
		request.setAttribute("list", list);
		request.setAttribute("total", total);
		request.setAttribute("vat", 0.1 * total);
		request.setAttribute("sum", 1.1 * total);
		session01.setAttribute("total", total);
		request.setAttribute("soLuong", soLuong);
		modelAndView.setViewName("customer/checkout");
		return modelAndView;
	}
}
