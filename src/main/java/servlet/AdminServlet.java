package servlet;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Dao.AdminDao;
import model.LoginAdmin;



@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminDao adminDao;

	public void init() {
		adminDao = new AdminDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		LoginAdmin admin = new LoginAdmin();
		admin.setUsername(username);
		admin.setPassword(password);

		try {
			if (adminDao.validate(admin)) {
				HttpSession session = request.getSession();
				session.setAttribute("userID",admin.getAdminid());
				response.sendRedirect("adminhome.jsp");
				
			} else {
				
				PrintWriter output = response.getWriter(); 
				response.setContentType("text/html"); 
				output.println("<script type=\"text/javascript\">"); 
				output.println("alert('Invalid Credentials');"); 
				output.println("window.location.replace('adminlogin.jsp');");
				output.println("</script>");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}

