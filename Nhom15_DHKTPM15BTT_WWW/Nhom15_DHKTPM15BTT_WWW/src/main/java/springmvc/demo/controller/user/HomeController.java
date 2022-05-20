package springmvc.demo.controller.user;

import java.io.IOException;
import java.util.ArrayList;
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

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import springmvc.demo.entity.Cart;
import springmvc.demo.entity.Color;
import springmvc.demo.entity.Order;
import springmvc.demo.entity.OrderDetail;
import springmvc.demo.entity.Product;
import springmvc.demo.entity.ProductCart;
import springmvc.demo.entity.ProductCategory;
import springmvc.demo.entity.Users;

@Controller
public class HomeController extends BaseController {

	@RequestMapping({ "/home", "/trang-chu" })
	public ModelAndView index(HttpServletResponse resp, HttpServletRequest req) {
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
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
			if (username == null) {
				req.setAttribute("soLuong", soLuong);
			} else {
				req.setAttribute("soLuong", homeServer.demSLCartTheoIdUser(username.getUserId()));
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		req.setAttribute("acc",username);
		modelAndView.setViewName("customer/index");
		return modelAndView;
	}

	@RequestMapping("/shop")
	public ModelAndView shop(HttpServletResponse resp, HttpServletRequest req) throws IOException {
		String indexPage = req.getParameter("index");
		HttpSession session = req.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (indexPage == null) {
			indexPage = "1";
		}
		int index = Integer.parseInt(indexPage);

		// Phan trang
		int soLuong = homeServer.demSLProduct();

		int endpage = (soLuong + 5) / 6;
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
		if (username == null) {
			req.setAttribute("soLuong", soLuongCc);
		} else {
			req.setAttribute("soLuong", homeServer.demSLCartTheoIdUser(username.getUserId()));
		}
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
		HttpSession session = req.getSession();
		String id = req.getParameter("id");
		Cookie arr[] = req.getCookies();
		String amount = req.getParameter("quantity");
		String txt = "";
		Users username = (Users) session.getAttribute("acc");
		if (username != null) {
			Cart cart = new Cart(new Date(), username);
			homeServer.addCart(cart);
			Product pro_add = homeServer.getProduct(id);
			homeServer.addProductCarts(new ProductCart(homeServer.findCartId(cart.getCartId()), pro_add,
					pro_add.getAmount(), pro_add.getPrice()));
		} else {
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

			///////////
			session.setAttribute("amount", amount);
			
		}
		modelAndView.setViewName("redirect:print");
		return modelAndView;
	}

	@RequestMapping("/print")
	public ModelAndView print(HttpServletResponse response, HttpServletRequest request) throws IOException {
		Cookie arr[] = request.getCookies();
		HttpSession session = request.getSession();
		String amount = (String) session.getAttribute("amount");
		Users username = (Users) session.getAttribute("acc");
		String idProduct = (String) session.getAttribute("productId");
		if (username == null) {
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
						if (list.get(i).getProductId().equals(list.get(j).getProductId()) ) {
							count++;
							list.remove(j);
							j--;
						}
					}
					soLuong++;
					list.get(i).setAmount(count);
					list.get(i).setColors(homeServer.getDsColorsByIDProduct(list.get(i).getProductId()));
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
			////////// amount != null

			else {
				List<Product> list = new ArrayList<>();
				int sl = Integer.parseInt(amount);
				String txt="";
				for (Cookie o : arr) {
					if (o.getName().equals("productID")) {
						String txt1[] = o.getValue().split("/");
						for (String s : txt1) {
							list.add(homeServer.getProduct(s));
						}
					}
				}
				String ids[] = txt.split("/");
				String txtOutPut = "";
				int check = 0;
				for (int i = 0; i < ids.length; i++) {
					if (ids[i].equals(idProduct)) {
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
					list.get(i).setColors(homeServer.getDsColorsByIDProduct(list.get(i).getProductId()));
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
		} else {
			Users us = (Users) session.getAttribute("acc");
			List<Product> products = new ArrayList<>();
			List<Object[]> pr_list = new ArrayList<Object[]>();
			pr_list.addAll(homeServer.getProductByUserID(us.getUserId()));
			for (Object[] objects : pr_list) {
				products.add(homeServer.getProduct((String) objects[0]));
			}
			int soLuong = 0;
			for (int i = 0; i < products.size(); i++) {
				int count = 1;
				for (int j = i + 1; j < products.size(); j++) {
					if (products.get(i).getProductId().equals(products.get(j).getProductId())) {
						count++;
						products.remove(j);
						j--;
					}
				}
				soLuong++;
				products.get(i).setAmount(count);
				products.get(i).setColors(homeServer.getDsColorsByIDProduct(products.get(i).getProductId()));
			}
			double total = 0;
			for (Product o : products) {
				total = total + o.getAmount() * o.getPrice();
			}
			request.setAttribute("list", products);
			HttpSession session01 = request.getSession();
			request.setAttribute("total", total);
			request.setAttribute("vat", 0.1 * total);
			request.setAttribute("sum", 1.1 * total);
			session01.setAttribute("total", total);
			session01.setAttribute("sum", 1.1 * total);
			session01.setAttribute("soLuong", homeServer.demSLCartTheoIdUser(username.getUserId()));
		}
		modelAndView.setViewName("customer/cart");
		return modelAndView;
	}

	@GetMapping("/check")
	public ModelAndView check(HttpServletResponse response, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username == null) {
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
			session01.setAttribute("sum", 1.1 * total);
			request.setAttribute("soLuong", soLuong);
		} else {
			HttpSession session01 = request.getSession();
			session01.getAttribute("total");
			session01.getAttribute("sum");
			request.setAttribute("soLuong", homeServer.demSLCartTheoIdUser(username.getUserId()));
		}
		modelAndView.setViewName("customer/checkout");
		return modelAndView;
	}

	@RequestMapping({ "/details/search", "/search" })
	public ModelAndView search(HttpServletResponse resp, HttpServletRequest req) {
		String ten = req.getParameter("txt").trim();
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

		}
		req.setAttribute("tenS", ten);
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
//		List<Object[]> product = homeServer.thongTinChiTiet(idReq);
		////set img
		List<Product> products = new ArrayList<>();
		List<Object[]> pr_list = new ArrayList<Object[]>();
		pr_list.addAll(homeServer.thongTinChiTiet(idReq));
		for (Object[] objects : pr_list) {
			products.add(homeServer.getProduct((String) objects[0]));
		}
		for (int i = 0; i < pr_list.size(); i++) {
		
			products.get(i).setColors(homeServer.getImageByIDProduct(products.get(i).getProductId()));
		}
		////////
		req.setAttribute("dsProductChiTiet", products);
		

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
			req.setAttribute("productId", listCc.get(i).getProductId());
		}

		req.setAttribute("soLuong", soLuong);
		
		modelAndView.setViewName("customer/product-details");
		return modelAndView;
	}

	@GetMapping("/sub")
	public ModelAndView sub(HttpServletResponse response, HttpServletRequest request) throws IOException {
		String id = request.getParameter("id");
		HttpSession session = request.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username == null) {
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
		}
		///// Delete product_cart have acc
		else {

			homeServer.deleteProductCartsByCreated_At( id);
		
		}
		modelAndView.setViewName("redirect:print");
		return modelAndView;
	}

	@GetMapping("/remove")
	public ModelAndView remove(HttpServletResponse response, HttpServletRequest request) throws IOException {
		String id = request.getParameter("id");
		HttpSession session = request.getSession();
		Users username = (Users) session.getAttribute("acc");
		if (username == null) {
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
		} else {
			homeServer.deleteProductCarts(id);
		}
		modelAndView.setViewName("redirect:print");
		return modelAndView;
	}

	@PostMapping("/order")
	public ModelAndView order(HttpServletResponse response, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
         Users username =  (Users) session.getAttribute("acc");
     	if (username==null) {
		String address = request.getParameter("street_address");
		String phone = request.getParameter("phone_number");
		Cookie arr[] = request.getCookies();
		List<Product> list = new ArrayList<Product>();
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
//       Users users= new Users();
//       users= new Users(list.getSellerID().getUserID());
		Users usernamenoacc = new Users();
		Order order = new Order("Check", new Date(), new Date(), usernamenoacc, 0, address, phone);
		
	
			homeServer.addOrders(order);
			Order order_add = homeServer.findOrderId(order.getOrderId());
			Map<Product, Integer> map = new HashMap<>();
			for (Product product : list) {
				map.put(product, map.getOrDefault(product, 0) + product.getAmount());
			}
			map.forEach((key, value) -> {
				Product pro_add = homeServer.getProduct(key.getProductId());
//				homeServer.addOrderDetails(new OrderDetail(order_add, pro_add, value, 0, new Date(), new Date(),
//						pro_add.getSale(), pro_add.getPrice()));
				homeServer.addOrderDetails(new OrderDetail(order_add, pro_add, value, 0, new Date(), new Date(),
						pro_add.getSale(), pro_add.getPrice()));
	            	homeServer.capNhatProduct(key.getProductId());
	            	
	    		
			});
			
			for (Cookie o : arr) {
				if (o.getName().equals("productID")) {
	        		o.setMaxAge(0);
	                response.addCookie(o);
				}else {
					 HttpSession session01= request.getSession();
			    		session01.setAttribute("acc", username);
				}
			}
		}
		/////account !=null
		else {
			List<Product> products = new ArrayList<Product>();
			List<Object[]> pr_list = new ArrayList<Object[]>();
			pr_list.addAll(homeServer.getProductByUserID(username.getUserId()));
			for (Object[] objects : pr_list) {
				products.add(homeServer.getProduct((String) objects[0]));
			}
			int soLuong=0;
			for (int i = 0; i < products.size(); i++) {
				int count = 1;
				for (int j = i + 1; j < products.size(); j++) {
					if (products.get(i).getProductId().equals(products.get(j).getProductId())) {
						count++;
						products.remove(j);
						j--;
					}
				}
				soLuong++;
				products.get(i).setAmount(count);
			}
			Order orderacc = new Order("Check", new Date(), new Date(), username, 0, username.getAddress(), username.getPhone());
			homeServer.addOrders(orderacc);
			Order order_add = homeServer.findOrderId(orderacc.getOrderId());
			Map<Product, Integer> map = new HashMap<>();
			for (Product product : products) {
				map.put(product, map.getOrDefault(product, 0) + product.getAmount());
			}
			map.forEach((key, value) -> {
				Product pro_add = homeServer.getProduct(key.getProductId());
				homeServer.addOrderDetails(new OrderDetail(order_add, pro_add, value, 0, new Date(), new Date(),
						pro_add.getSale(), pro_add.getPrice()));
				homeServer.deleteProductCarts(key.getProductId());
				homeServer.capNhatProduct(key.getProductId());
			});
			
		}
		
		modelAndView.setViewName("redirect:home");
		return modelAndView;
	}

	@GetMapping({ "/details/caterogy", "/caterogy" })
	public ModelAndView category(HttpServletResponse res, HttpServletRequest req) throws IOException {
		String textSearch = req.getParameter("txtC");

		String indexPageC = req.getParameter("index");

		if (indexPageC == null) {
			indexPageC = "1";
		}
		int indexC = Integer.parseInt(indexPageC);

		// Phan trang
		int soLuongC = homeServer.demSLKhiSearchTheoIDCatorogy(textSearch);

		int endpage = (soLuongC + 5) / 6;

		/////////////
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
		////////////
		req.setAttribute("dsProduct", homeServer.dsProductTheoIDCatorogyTop6(indexC, textSearch));
		req.setAttribute("endpage", endpage);
		req.setAttribute("tag", indexC);
		req.setAttribute("tenC", textSearch);
		req.setAttribute("dsCategory", homeServer.getDsCategory());
		req.setAttribute("dsBranchs", homeServer.getDsBranchs());
		req.setAttribute("dsColors", homeServer.dsColor());
		modelAndView.setViewName("customer/shop");
		return modelAndView;
	}

	@GetMapping({ "/details/branch", "/branch" })
	public ModelAndView branchs(HttpServletResponse res, HttpServletRequest req) throws IOException {
		String textSearch = req.getParameter("txtC");

		String indexPageC = req.getParameter("index");

		if (indexPageC == null) {
			indexPageC = "1";
		}
		int indexC = Integer.parseInt(indexPageC);

		// Phan trang
		int soLuongC = homeServer.demSLKhiSearchTheoIDBranch(textSearch);

		int endpage = (soLuongC + 5) / 6;

		/////////////
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
		////////////
		req.setAttribute("dsProduct", homeServer.dsProductTheoIDBranchsTop6(indexC, textSearch));
		req.setAttribute("endpage", endpage);
		req.setAttribute("tag", indexC);
		req.setAttribute("tenC", textSearch);
		req.setAttribute("dsCategory", homeServer.getDsCategory());
		req.setAttribute("dsBranchs", homeServer.getDsBranchs());
		req.setAttribute("dsColors", homeServer.dsColor());
		modelAndView.setViewName("customer/shop");
		return modelAndView;
	}

}