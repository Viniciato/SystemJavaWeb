package system.filter;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(filterName="doLogin",dispatcherTypes = {DispatcherType.REQUEST }
					, urlPatterns = { "/home", "/products.jsp", "/about.jsp"})
public class doLoginFilter implements Filter {
	public void destroy() {
		// TODO Auto-generated method stub
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		HttpSession session = httpRequest.getSession(false);
		if(session.getAttribute("isLoggedIn") != null)
			chain.doFilter(request, response);
		else{
			session = httpRequest.getSession();
			session.setAttribute("isLoggedIn", true);
			session.setAttribute("user", httpRequest.getRemoteUser());
			DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
			Date date = new Date();
			Cookie cookie = new Cookie("Data", dateFormat.format(date));
			httpResponse.addCookie(cookie);
			chain.doFilter(httpRequest, httpResponse);
		}
	}
	public void init(FilterConfig fConfig) throws ServletException {
	}
}
