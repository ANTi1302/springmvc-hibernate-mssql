package springmvc.demo.controller.admin;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import springmvc.demo.entity.Role;
import springmvc.demo.entity.Users;
import springmvc.demo.service.admin.AdminService;
import springmvc.demo.service.user.HomeService;

@Controller
@RequestMapping("/admin")
public class ADLoginController {

	@Autowired
	AdminService adminService;
	
	@RequestMapping("/adlogin")
	public String showformlogin(HttpServletResponse response, HttpServletRequest request) throws IOException {
		return "customer/login";
	}

	@GetMapping("/adlogout")
	public String logout(HttpServletResponse response, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("acc");
		return "admin/login";
	}

	

	
}
