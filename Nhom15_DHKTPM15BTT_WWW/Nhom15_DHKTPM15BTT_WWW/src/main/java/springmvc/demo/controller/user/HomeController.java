package springmvc.demo.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController {

	@RequestMapping({"/home","/trang-chu"})
	public ModelAndView index() {
		
		modelAndView.setViewName("customer/index");
		return modelAndView;
	}
}
