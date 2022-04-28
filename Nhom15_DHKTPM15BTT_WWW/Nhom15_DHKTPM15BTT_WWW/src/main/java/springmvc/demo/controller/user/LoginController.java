package springmvc.demo.controller.user;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import springmvc.demo.entity.Role;
import springmvc.demo.entity.Users;

@Controller
public class LoginController extends BaseController {

	@RequestMapping("/login")
	public ModelAndView showformlogin(HttpServletResponse response, HttpServletRequest request) throws IOException {

		modelAndView.setViewName("customer/login");
		return modelAndView;
	}

	@PostMapping("/login")
	public ModelAndView login(HttpServletResponse response, HttpServletRequest request) {
		String ten = request.getParameter("name");
		String pass = (String) request.getParameter("pass");
		HttpSession session = request.getSession();

		// tim sdt de lay id_user
		session.setAttribute("phone", homeServer.timKiemUserByPhone(ten));
//		Users users=productFacade.timKiemUserLogin(ten, pass);
		if (homeServer.timKiemUserLogin(ten, pass) == null) {
			modelAndView.setViewName("customer/login");
		} else {
			Cookie arr[] = request.getCookies();
			for (Cookie o : arr) {
				if (o.getName().equals("productID")) {
					o.setMaxAge(0);
					response.addCookie(o);
				}
			}
			session.setAttribute("acc", homeServer.timKiemUserLogin(ten, pass));
			modelAndView.setViewName("redirect:home");
		}
		return modelAndView;
	}

	@GetMapping("/logout")
	public ModelAndView logout(HttpServletResponse response, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("acc");
		modelAndView.setViewName("redirect:home");
		return modelAndView;
	}

	@GetMapping("/loginfb")
	public ModelAndView loginbyFb(HttpServletResponse response, HttpServletRequest request) throws IOException {
		String ten = request.getParameter("name");
		String pass = request.getParameter("id");
		Users users = homeServer.timKiemUser(pass);
		Role role = new Role("4df7559c-9c34-485a-9421-5e351b682866");
		// Users users2= new Users(ten, null, pass, 0, 0, null);
		Users users2 = new Users(ten, null, null, pass, role);
		HttpSession session = request.getSession();

		// tim sdt de lay id_user

		if (users == null) {
			homeServer.themUser(users2);
			session.setAttribute("acc", users2);
			response.sendRedirect("home");
			session.setAttribute("phone", homeServer.timKiemUser(pass));
		} else {
			Cookie arr[] = request.getCookies();
			for (Cookie o : arr) {
				if (o.getName().equals("productID")) {
					o.setMaxAge(0);
					response.addCookie(o);
				}
			}
			session.setAttribute("acc", users);
			response.sendRedirect("home");
			session.setAttribute("phone", homeServer.timKiemUser(pass));
		}
		return modelAndView;
	}

	@GetMapping("/mypurchase")
	public ModelAndView mypurchase(HttpServletResponse response, HttpServletRequest request) {
		modelAndView.setViewName("customer/mypurchase");
		return modelAndView;
	}

	@RequestMapping("/account")
	public ModelAndView account(HttpServletResponse response, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		Users username = (Users) session.getAttribute("acc");

		request.setAttribute("listuser", homeServer.getUsers(username.getUserId()));
		modelAndView.setViewName("customer/account");
		return modelAndView;
	}

	@GetMapping("/updateuser")
	public ModelAndView updateuser(HttpServletResponse response, HttpServletRequest request) {
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
		homeServer.saveUser(username,username.getUserId());
		// set customer as a model attribute to pre-populate the form
		modelAndView.setViewName("redirect:account");
		return modelAndView;
	}
}
