package springmvc.demo.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class LoginController extends BaseController{

	@GetMapping("/login")
	public ModelAndView showformlogin(HttpServletResponse response, HttpServletRequest request) {
		modelAndView.setViewName("customer/login");
		return modelAndView;
	}
	
	@PostMapping("/login")
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
		return modelAndView;
	}
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpServletResponse response, HttpServletRequest request) {
		HttpSession session= request.getSession();
		session.removeAttribute("acc");
		modelAndView.setViewName("redirect:home");
		return modelAndView;
	}
}
