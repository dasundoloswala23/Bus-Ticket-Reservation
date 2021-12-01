package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.LoginDao;
import model.LoginMember;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDao loginDao;

	public void init() {
		loginDao = new LoginDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		LoginMember loginmember = new LoginMember();
		loginmember.setUsername(username);
		loginmember.setPassword(password);

		try {
			if (loginDao.validate(loginmember)) {
				HttpSession session = request.getSession();
				session.setAttribute("userID",loginmember.getUserid());
				response.sendRedirect("homepage.jsp");
				
			} else {
				
				PrintWriter output = response.getWriter(); 
				response.setContentType("text/html"); 
				output.println("<script type=\"text/javascript\">"); 
				output.println("alert('Invalid Credentials');"); 
				output.println("window.location.replace('login.jsp');");
				output.println("</script>");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
