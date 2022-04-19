package springmvc.demo.controller.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.propertyeditors.StringArrayPropertyEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import springmvc.demo.entity.Cart;
import springmvc.demo.entity.Order;
import springmvc.demo.entity.OrderDetail;
import springmvc.demo.entity.Product;
import springmvc.demo.entity.ProductCart;
import springmvc.demo.entity.Users;

@Controller
public class HomeController extends BaseController {

	@RequestMapping({ "/home", "/trang-chu" })
	public ModelAndView index(HttpServletResponse resp, HttpServletRequest req) {
		modelAndView.addObject("listProduct", homeServer.getDsColorTop9());
		modelAndView.addObject("listProductSlides", homeServer.getDsColorTop3());

		try {
			Cookie arr[] = req.getCookies();

			List<Product> listCc = new ArrayList<>();
			for (Cookie o : arr) {
				if (o.getName().equals("productID")) {
					String txt[] = o.getValue().split("/");
					for (String s : txt) {
						listCc.add((Product) homeServer.getProduct(s));
					}
				}
			}
			int soLuong = 0;
			for (int i = 0; i < listCc.size(); i++) {
				int count = 1;
				for (int j = i + 1; j < listCc.size(); j++) {
					if (listCc.get(i).getProductId().equals(listCc.get(j).getProductId())) {
						count++;
						listCc.remove(j);
						j--;

					}
				}
				soLuong++;
				listCc.get(i).setAmount(count);
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

		// Phan trang
		int soLuong = homeServer.demSLProduct();

		int endpage = (soLuong+5) / 6;
//		if (soLuong % 3 != 0) {
//			endpage++;
//		}
		// dem soluong Cart
		Cookie arr[] = req.getCookies();
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
				if (listCc.get(i).getProductId().equals(listCc.get(j).getProductId())) {
					count++;
					listCc.remove(j);
					j--;
				}
			}
			soLuongCc++;
			listCc.get(i).setAmount(count);
		}

		// So luong Tong Product
		int soLuongProduct = homeServer.demSLProduct();
		// Add cart wh
		req.setAttribute("tongSLProduct", soLuongProduct);
		req.setAttribute("soLuong", soLuongCc);
		req.setAttribute("dsProduct", homeServer.getDsColorTop6(index));
//		 homeServer.getDsColorTop6(index).forEach(r -> System.out.println(r));
		req.setAttribute("dsCategory", homeServer.getDsCategory());
		req.setAttribute("dsBranchs", homeServer.getDsBranchs());
		req.setAttribute("dsColors", homeServer.dsColor());
		req.setAttribute("endpage", endpage);
		req.setAttribute("tag", index);
		modelAndView.setViewName("customer/shop");
		return modelAndView;
	}

	@GetMapping("/cart")
	public ModelAndView cart(HttpServletResponse resp, HttpServletRequest req) throws IOException {
		String id = req.getParameter("id");
		Cookie arr[] = req.getCookies();
		String amount = req.getParameter("quantity");
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
		modelAndView.setViewName("redirect:print");
		HttpSession session = req.getSession();
		session.setAttribute("amount", amount);
		return modelAndView;
	}

	@RequestMapping("/print")
	public ModelAndView print(HttpServletResponse response, HttpServletRequest request) throws IOException {
		Cookie arr[] = request.getCookies();
		HttpSession session = request.getSession();
		String amount = (String) session.getAttribute("amount");
		if (amount == null) {
			amount = "1";
			int sl = Integer.parseInt(amount);
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
				int count = sl;
				for (int j = i + 1; j < list.size(); j++) {
					if (list.get(i).getProductId().equals(list.get(j).getProductId())) {
						count++;
						list.remove(j);
						j--;
					}
				}
				soLuong++;
				list.get(i).setAmount(count);
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
		} else {
			List<Product> list = new ArrayList<>();
			int sl = Integer.parseInt(amount);
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
				int count = sl;
				for (int j = i + 1; j < list.size(); j++) {
					if (list.get(i).getProductId().equals(list.get(j).getProductId())) {
						count++;
						list.remove(j);
						j--;
					}
				}
				soLuong++;
				// Bugggggg cap nhat amount theo productId
				list.get(i).setAmount(count);
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
		}
		modelAndView.setViewName("customer/cart");
		return modelAndView;
	}

	@GetMapping("/check")
	public ModelAndView check(HttpServletResponse response, HttpServletRequest request) throws IOException {
		Cookie arr[] = request.getCookies();
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
				if (list.get(i).getProductId().equals(list.get(j).getProductId())) {
					count++;
					list.remove(j);
					j--;
				}
			}
			soLuong++;
			list.get(i).setAmount(count);
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

	@RequestMapping({ "/details/search", "/search" })
	public ModelAndView search(HttpServletResponse resp, HttpServletRequest req) {
		String ten = req.getParameter("txt");
		String indexPage = req.getParameter("index");
		String[] tenx = ten.split("[,; \\t\\n\\r]+");
		for (String string : tenx) {
			if (indexPage == null) {
				indexPage = "1";
			}
			int index = Integer.parseInt(indexPage);
			// Phan trang
			int soLuong = homeServer.demSLKhiSearch(string);
			int endpage = soLuong / 3;
			if (soLuong % 3 != 0) {
				endpage++;
			}
			req.setAttribute("dsProduct", homeServer.dsColorTop6(index, string));
			req.setAttribute("endpage", endpage);
			req.setAttribute("tag", index);
			req.setAttribute("tenS", string);
		}

//		HttpSession session = req.getSession();
//		List<String> items = (List<String>) req.getSession().getAttribute("history");
//		if (items == null) {
//			items = new ArrayList<String>();
//			 req.getSession().setAttribute("history", items);
//		}
//		// getParameter tra ve String (todo-demo.jsp?theItem=? thi add ?)
//		String theItem = req.getParameter("txt");
//		if (theItem != null) {
//			items.add(theItem);
//		}
//		System.out.println(theItem);
		Cookie arr[] = req.getCookies();
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
				if (listCc.get(i).getProductId().equals(listCc.get(j).getProductId())) {
					count++;
					listCc.remove(j);
					j--;
				}
			}
			soLuongCc++;
			((Product) listCc.get(i)).setAmount(count);
		}
		req.setAttribute("dsCategory", homeServer.getDsCategory());
		req.setAttribute("dsBranchs", homeServer.getDsBranchs());
		req.setAttribute("dsColors", homeServer.dsColor());
		req.setAttribute("soLuong", soLuongCc);
		modelAndView.setViewName("customer/shop");
		return modelAndView;
	}

	@RequestMapping({ "/details/*", "/details" })
	public ModelAndView details(HttpServletResponse resp, HttpServletRequest req) {
		String idReq = req.getParameter("idProduct");
		List<Object[]> product = homeServer.thongTinChiTiet(idReq);
		req.setAttribute("dsProductChiTiet", product);

		Cookie arr[] = req.getCookies();
		List<Product> listCc = new ArrayList<>();
		for (Cookie o : arr) {
			if (o.getName().equals("productID")) {
				String txt[] = o.getValue().split("/");
				for (String s : txt) {
					listCc.add((Product) homeServer.getProduct(s));
				}
			}
		}
		int soLuong = 0;
		for (int i = 0; i < listCc.size(); i++) {
			int count = 1;
			for (int j = i + 1; j < listCc.size(); j++) {
				if (listCc.get(i).getProductId().equals(listCc.get(j).getProductId())) {
					count++;
					listCc.remove(j);
					j--;
				}
			}
			soLuong++;
			listCc.get(i).setAmount(count);
		}

		req.setAttribute("soLuong", soLuong);
		modelAndView.setViewName("customer/product-details");
		return modelAndView;
	}

	@GetMapping("/sub")
	public ModelAndView sub(HttpServletResponse response, HttpServletRequest request) throws IOException {
		String id = request.getParameter("id");
		Cookie arr[] = request.getCookies();
		String txt = "";
		for (Cookie o : arr) {
			if (o.getName().equals("productID")) {
				txt = txt + o.getValue();
				o.setMaxAge(0);
				response.addCookie(o);
			}
		}
		String ids[] = txt.split("/");
		String txtOutPut = "";
		int check = 0;
		for (int i = 0; i < ids.length; i++) {
			if (ids[i].equals(id)) {
				check++;
			}
			if (check != 1) {
				if (txtOutPut.isEmpty()) {
					txtOutPut = ids[i];
				} else {
					txtOutPut = txtOutPut + "/" + ids[i];
				}
			} else {
				check++;
			}
		}
		if (!txtOutPut.isEmpty()) {
			Cookie c = new Cookie("productID", txtOutPut);
			c.setMaxAge(60 * 60 * 24);
			response.addCookie(c);
		}
		modelAndView.setViewName("redirect:print");
		return modelAndView;
	}

	@GetMapping("/remove")
	public ModelAndView remove(HttpServletResponse response, HttpServletRequest request) throws IOException {
		String id = request.getParameter("id");
		Cookie arr[] = request.getCookies();
		String txt = "";
		for (Cookie o : arr) {
			if (o.getName().equals("productID")) {
				txt = txt + o.getValue();
				o.setMaxAge(0);
				response.addCookie(o);
			}
		}
		String ids[] = txt.split("/");
		String txtOutPut = "";
		for (int i = 0; i < ids.length; i++) {
			if (!ids[i].equals(id)) {
				if (txtOutPut.isEmpty()) {
					txtOutPut = ids[i];
				} else {
					txtOutPut = txtOutPut + "/" + ids[i];
				}
			}
		}
		if (!txtOutPut.isEmpty()) {
			Cookie c = new Cookie("productID", txtOutPut);
			c.setMaxAge(60 * 60 * 24);
			response.addCookie(c);
		}
		modelAndView.setViewName("redirect:print");
		return modelAndView;
	}

	@PostMapping("/order")
	public ModelAndView order(HttpServletResponse response, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
//         Users username =  (Users) session.getAttribute("acc");
		String address=request.getParameter("street_address");
		String phone=request.getParameter("phone_number");
		Cookie arr[] = request.getCookies();
		Set<Product> list = new HashSet<Product>();
		for (Cookie o : arr) {
			if (o.getName().equals("productID")) {
				String txt[] = o.getValue().split("/");
				for (String s : txt) {
					list.add(homeServer.getProduct(s));
				}
			}
		}
//       Users users= new Users();
//       users= new Users(list.getSellerID().getUserID());
		Users username = new Users();
        Order order= new Order("Check", new Date(), new Date(), username, 0, address, phone);
		homeServer.addOrders(order);
		Order order_add=homeServer.findOrderId(order.getOrderId());
		Map<Product,Integer> map= new HashMap<>();
		for (Product product : list) {
			map.put(product, map.getOrDefault(product, 0) + product.getAmount());
		}
//		for (Product product : list) {
////			int count = 1;
//			Product pro_add=homeServer.getProduct(product.getProductId());
//			homeServer.addOrderDetails(new OrderDetail(order_add, pro_add, product.getAmount(), 0, new Date(), new Date(), product.getSale(), product.getPrice()));
//		}
		map.forEach((key,value)-> {
			Product pro_add=homeServer.getProduct(key.getProductId());
			homeServer.addOrderDetails(new OrderDetail(order_add, pro_add, value, 0, new Date(), new Date(), pro_add.getSale(), pro_add.getPrice()));
		});
		for (Cookie o : arr) {
			if (o.getName().equals("productID")) {
				o.setMaxAge(0);
				response.addCookie(o);
			}
		}
		modelAndView.setViewName("redirect:home");
		return modelAndView;
	}
	@GetMapping("/login")
	public ModelAndView login(HttpServletResponse response, HttpServletRequest request) {
		String ten=request.getParameter("name");
		String pass=(String) request.getParameter("pass");
//		Users users=productFacade.timKiemUserLogin(ten, pass);
		if (homeServer.timKiemUserLogin(ten, pass)==null) {
			modelAndView.setViewName("customer/login");
		}else {
			
			HttpSession session= request.getSession();
			session.setAttribute("acc", homeServer.timKiemUserLogin(ten, pass));
			modelAndView.setViewName("redirect:home");
//		
		}
		modelAndView.setViewName("customer/login");
		return modelAndView;
	}

}
