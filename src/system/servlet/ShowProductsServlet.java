package system.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import system.bean.Product;
import system.bean.ProductsBean;

@WebServlet("/home")
public class ShowProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		ProductsBean productsBean = (ProductsBean)session.getAttribute("productsBean");
		if(productsBean == null){
			productsBean = ProductsBean.getInstance();
			session.setAttribute("productsBean", productsBean);
		}
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String amount = request.getParameter("amount");
		if(name!=null && price!=null && description!=null && amount!=null){
			Product p = new Product(name, Double.parseDouble(price), description, Integer.parseInt(amount));
			productsBean.add(p);
		}
		String address = "/WEB-INF/home.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
