package springmvc.demo.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
//		Users users=productFacade.timKiemUserLogin(ten, pass);
		if (homeServer.timKiemUserLogin(ten, pass) == null) {
			modelAndView.setViewName("customer/login");
		} else {

			HttpSession session = request.getSession();
			session.setAttribute("acc", homeServer.timKiemUserLogin(ten, pass));
			modelAndView.setViewName("redirect:home");
//		
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
		Users users = homeServer.timKiemUser(ten, pass);
		Role role= new Role("4df7559c-9c34-485a-9421-5e351b682866");
		// Users users2= new Users(ten, null, pass, 0, 0, null);
		Users users2 = new Users(ten, null, null, pass, role);

		if (users == null) {
			homeServer.themUser(users2);
			HttpSession session = request.getSession();
			session.setAttribute("acc", users2);
			response.sendRedirect("home");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("acc", users);
			response.sendRedirect("home");
		}
		return modelAndView;
	}
	@GetMapping("/mypurchase")
	public ModelAndView mypurchase(HttpServletResponse response, HttpServletRequest request) {
		modelAndView.setViewName("customer/mypurchase");
		return modelAndView;
	}
}
