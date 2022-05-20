package springmvc.demo.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import springmvc.demo.dao.UsersDao;
import springmvc.demo.entity.Users;
import springmvc.demo.service.user.HomeService;

public class LoginSuccessHandler implements AuthenticationSuccessHandler{

	@Autowired
	private HomeService homeService;
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {

		Users u= this.homeService.getUsersByPhone(authentication.getName()).get(0);
		request.getSession().setAttribute("acc", u);
		Cookie arr[] = request.getCookies();
		for (Cookie o : arr) {
			if (o.getName().equals("productID")) {
				o.setMaxAge(0);
				response.addCookie(o);
			}
		}
		response.sendRedirect("/Nhom15_DHKTPM15BTT_WWW/home");
	}

}
